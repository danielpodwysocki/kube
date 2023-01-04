.PHONY: dev dev-home cluster argo

# Home cluster
dev-home:
	kubectl apply -f root-apps/home.yaml

# Main cluster
dev: argo
	kubectl apply -f root-apps/dapo.yaml

argo: cluster
	kubectl create namespace argocd
	kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
	kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d && printf "\n"

cluster:
	kind create cluster --name kind-dapo --config=dapo-dev-cluster.yaml
	kubectl config use-context kind-dapo
