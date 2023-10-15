## Basic Deployment

K3s is like  other Kubernetes clusters, let's run a standard application. Nothing here is unique to K3s and is germane to standard Kubernetes.


### Example 1: 

**Create a deployment for an application**
```
kubectl create deployment my-nginx --image=nginx
```{{exec}}


```
kubectl get pods
```{{exec}}

