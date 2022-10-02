# kube
My Kubernetes lab, deployed via ArgoCD

# Argo apps

This repository is split into 2 Argo apps:

+ cluster-core - core setup of the cluster - networking, ingress controller, etc. - app of apps romat
+ cluster-apps - app of apps for all other deployments in the cluster.

# Sync

The inital manifest that after applying will deploy everything is respectivally:
- cluster-core/root-app.yaml
- cluster-apps/root-app.yaml

