## Uninstall K3s

K3s installs both a kill and uninstall script. We'll use the uninstall to clean and start fresh.
```
/usr/local/bin/k3s-uninstall.sh
```{{exec}}

By default, some files and configuration are left behind so that it is possible to re-install the same or a newer version of K3s without loss of data. If you wish to remove all traces of K3s from the system, do the following additional steps:

```
sudo rm -R /etc/rancher && sudo rm -R /var/lib/rancher
```{{exec}}


