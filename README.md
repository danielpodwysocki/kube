# kube
My Kubernetes lab, deployed via ArgoCD

# Argo apps

This repo is split into 3 main helm charts:
+ clusters/common - shared resources between clusters
+ clusters/home - resources for my home cluster
+ clusters/dapo - resources for my main cluster

# Local development workflow
To run the clusters locally, you need to have:
+ [kind](https://kind.sigs.k8s.io/)
+ [Docker](https://www.docker.com/)
+ [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/)

## Setup
To setup the dev cluster, run:
```
make dev
```

To port-forward the Argo UI, run:
```
make port-forward
```

To clean up:
```
make clean
```
To roll:
```
make clean && make dev
```
# Sync

The inital manifest that after applying will deploy everything is respectivally:
+ root-apps/dapo.yaml
+ root-apps/home.yaml


# todos:
- yamllint hooks
