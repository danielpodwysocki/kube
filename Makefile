.PHONY: dev dev-home

# Home cluster
dev-home:
	echo todo

# Main cluster
dev:
	echo todo

argo: cluster
	kubectl create namespace argocd
	kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
	kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d && printf "\n"

cluster:
	kind create cluster --name kind-dapo --config=dev-cluster-conf.yml
	kubectl config use-context kind-dapo


