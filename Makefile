.PHONY: dev dev-home cluster argo argo-secret


argo-secret:
	hack/get_argo_secret.sh

# Home cluster
dev-home:
	kubectl apply -f root-apps/home.yaml

# Main cluster
dev: argo
	kubectl apply -f root-apps/dapo.yaml

argo: cluster
	kubectl create namespace argocd
	kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
	hack/get_argo_secret.sh

cluster:
	kind create cluster --name dapo --config=dapo-dev-cluster.yaml
	kubectl config use-context kind-dapo

clean:
	kind delete cluster --name dapo

port-forward:
    # if this env is empty, the script will use the default port 8080
	hack/argo.sh ${LOCAL_ARGO_PORT}
