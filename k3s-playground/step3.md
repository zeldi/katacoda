
Another altenative to deploy an application is by creating yaml declarative file

Create a deployment file `deployment-podinfo.yaml`:

```
apiVersion: apps/v1
kind: Deployment
metadata:
  name: podinfo
spec:
  selector:
    matchLabels:
      app: podinfo
  template:
    metadata:
      labels:
        app: podinfo
    spec:
      containers:
        - name: main
          image: stefanprodan/podinfo:latest
          ports:
            - name: http
              containerPort: 9898
```{{copy}}

Apply the deployment file against our k3s cluster:

`kubectl apply -f deployment-podinfo.yaml`{{exec}}


To check whether our pod is already running, execute the following command:

`kubectl get pod`{{exec}}

Once the pod is running, you declare a service (i.e `svc-podinfo.yaml`) for accessing the application:

```
---
apiVersion: v1
kind: Service
metadata:
  name: podinfo
spec:
  type: NodePort
  selector:
    app: podinfo
  ports:
    - name: http
      port: 8080
      targetPort: 9898
      nodePort: 30007
```{{copy}}

Create Service to access the POD:
`kubectl apply -f svc-podinfo.yaml`{{exec}}


Inspect the service:
```
kubectl get svc
```{{exec}}


Once service is created, you may access your application via the following link:

[ACCESS Deployed Application Here]({{TRAFFIC_HOST1_30007}})


