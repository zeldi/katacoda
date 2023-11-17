step1

This lab started a fresh Kubernetes cluster for you. Verify that it's ready:

```
{ clear && \
  echo -e "\n=== Kubernetes Status ===\n" && \
  kubectl get --raw '/healthz?verbose' && \
  kubectl version --short && \
  kubectl get nodes && \
  kubectl cluster-info; 
} | grep -z 'Ready\| ok\|passed\|running'
```{{exec}}

The Helm package manager used for installing applications on Kubernetes is also available:

```
helm version --short
```{{exec}}