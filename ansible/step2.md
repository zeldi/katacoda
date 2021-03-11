# Creating Inventory File
---

To let Ansible know about it, put its hostname in an __inventory__ file. Let's call our inventory `myhosts.ini` and group all the hosts to a single group called `web`

````
cat << EOF > /root/myansible/myhosts.ini
[web]
node-1 ansible_host=172.20.0.2
node-2 ansible_host=172.20.0.3
node-3 ansible_host=172.20.0.4

[all:vars]
ansible_user=centos
EOF
```{{execute}}

Verify the content of the inventory file `myhosts.ini`
`ls -lha && cat myhosts.ini`{{execute}}
