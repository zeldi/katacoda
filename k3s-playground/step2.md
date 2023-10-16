## Basic Deployment

K3s is like  other Kubernetes clusters, let's run a standard application. Nothing here is unique to K3s and is germane to standard Kubernetes.


### Example 1: 


**Create a deployment for an application**

```
kubectl create deployment my-nginx --image=nginx
```{{exec}}


**Accessing the application:** 

To access a Kubernetes deployment using port-forward, you can use the `kubectl` command. Here's the command to port-forward to a deployment:

```
kubectl port-forward deployment/my-nginx 8080:80
```{{exec}}

The above command enable user to temporarily access the application via localhost port number 8080.

```
curl http://localhost:8080
```{{exec}}