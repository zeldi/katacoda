## Uninstall K3s

K3s installs both a kill and uninstall script. We'll use the uninstall to clean and start fresh.
```
/usr/local/bin/k3s-uninstall.sh
```{{exec}}

To perfectly uninstall K3s, you may need to remove some other residues:
```
sudo rm -R /etc/rancher && sudo rm -R /var/lib/rancher
```{{exec}}


