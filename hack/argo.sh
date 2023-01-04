#!/bin/bash
# port-forward argo
# usage: ./argo.sh <port>

# if no argument is passed, use ${DEFAULT_LOCAL_ARGO_PORT}
DEFAULT_LOCAL_ARGO_PORT=8080

if [ -z "$1" ]; then
    echo "No port specified, using default port ${DEFAULT_LOCAL_ARGO_PORT}"
    kubectl port-forward svc/argocd-server -n argocd ${DEFAULT_LOCAL_ARGO_PORT}:443
    exit 0
fi

kubectl port-forward svc/argocd-server -n argocd ${1}:443