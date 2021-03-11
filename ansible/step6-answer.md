# EXERCISE
---

## Solution

### Create an `index.html` file

````
mkdir ~/myansible/files && 
cat << EOF > ~/myansible/files/index.html
<B>HELLLO ANSIBLE</B>
EOF
```{{execute}}

### Ansible Playbook

````
cat << EOF > ~/myansible/install.yml
---
- name: Install NGINX Server
  hosts: web
  remote_user: centos
  become: yes
  tasks:
    - name: Install NGINX package
      yum:
        name: nginx
        state: present
    - name: Make sure NGINX service started
      service:
        name: nginx
        state: started

EOF
```{{execute}}