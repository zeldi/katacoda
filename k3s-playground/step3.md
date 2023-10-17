
Another altenative to deploy an application is by creating yaml declarative file

Create a deployment file `podinfo.yaml`:

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

Apply the deployment file against our k3s cluster:

`kubectl apply -f podinfo.yaml`{{exec}}


