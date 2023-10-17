
K3s is like  other Kubernetes clusters, Nothing here is unique to K3s and is germane to standard Kubernetes.
As in any type of kubernetes cluster, one way to deploy application is using `IMPERATIVE` command line:.  

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

However, `Port-forwarding` is mainly intended for debugging and development purposes. It's not suitable for production traffic or long-term solutions because it lacks the reliability and robustness required for production environments. 

Therefore, you will make the application accessible through a Kubernetes Service. In this instance, you will illustrate the process of exposing the Deployment using a `NodePort` Service:

```
kubectl expose deployment my-nginx --type=NodePort --port=80
```{{exec}}

See that the application objects are created and running:

```
kubectl get pods,services
```{{exec}}

We can inspect if  the NGINX application responds as expected:

```
curl http://localhost:30245
```{{exec}}

