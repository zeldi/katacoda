# EXERCISE
---

## Create an Ansible Playbook Install and Deploy NGINX Web Server

1. Create an `index.html` file

````
mkdir ~/myansible/files && 
cat << EOF > ~/myansible/files/index.html
<B>HELLLO ANSIBLE</B>
EOF
```{{execute}}

2. Create and Execute an ansible playbook with the following specification:

The playbook should look like this:

```
---
- name: Install NGINX Server
  hosts: web
  remote_user: centos
  become: yes
  tasks:

```

* `---` - indicates file is in YAML format
* hosts - this play will be executed on the group web
* become - this play will use all tasks in privileged mode (root)
* tasks - the tasks are outlined as follows:
  - Install NGINX package (clue: use `yum` module)
  - Enable/start NGINX service (clue: use `service` module)
  - Copy over an `index.html` file to each web host (clue: use `copy` module)