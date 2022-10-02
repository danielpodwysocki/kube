# kube
My Kubernetes lab, deployed via ArgoCD

# Argo apps

This repository is split into 2 Argo apps:

+ cluster-core - core setup of the cluster - networking, ingress controller, etc.
+ cluster-apps - app of apps for all other deployments in the cluster.

# Sync

The inital manifest that after applying will deploy everything is respectivally:
- cluster-core/application-set.yaml
- cluster-apps/application-set.yaml

This makes use of the ApplicationSet resource from Argo, which templates out each deployment using a JSON file (<application>/gen-config.json).

A reference on ApplicationSet: https://argo-cd.readthedocs.io/en/stable/user-guide/application-set/

Each application lives in its subdir of the cluster-core or cluster-apps directory.
