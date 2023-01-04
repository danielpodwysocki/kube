# awx-demo

This deployment is meant to evaluate and test around with AWX.

### Port-forwarding

```
kubectl port-forward service/awx-demo-service 33380:80
```

### Admin credentials
Username: `admin`
To obtain the password, run:
```
kubectl get secret awx-demo-admin-password -o jsonpath="{.data.password}" | base64 --decode ; echo
```
