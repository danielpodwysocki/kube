#!/bin/bash

# check if the argo initial secret is present
while true; do
    if grep argocd-initial-admin-secret <(kubectl get secret -A); then
        break
    fi
    sleep 1
done
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d && printf "\n"
