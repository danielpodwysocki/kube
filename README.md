# hetzner-prod

## Installing k3s using k3sup

When 10.0.0.10 is your k3s server:
```
k3sup install --ip 10.0.0.10 --user root
```

## Applying the repo

```
kubectl apply -f clusters/hetzner-prod/flux-system/gotk-components.yaml
kubectl apply -f clusters/hetzner-prod/flux-system/gotk-sync.yaml
```

