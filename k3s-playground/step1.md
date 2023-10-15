This is your first step.

## K3s-Installation

Execute the K3s installation using the following command:

```
time curl -sfL https://get.k3s.io | sh -
```{{exec}}
**Note**: command `time` is used to measure the execution time of k3s installation process.


To install with specific version of Kubernetes, use environment variable `INSTALL_K3S_VERSION` as follow:

```
$ curl -sfL https://get.k3s.io | INSTALL_K3S_VERSION=v1.25.7 sh -
```

The above installation is single node installation, which is often a perfect environment for quick development, experimentation, validation, and learning purpose. We can check the cluster node status:

```
systemctl status k3s.service
```{{exec}}

```
k3s kubectl get nodes
```{{exec}}

To gauge the space and memory usage of k3s, we examine the resource footprint following the installation of K3s:

```
df -h 
```{{exec}}

```
free -h 
```{{exec}}
