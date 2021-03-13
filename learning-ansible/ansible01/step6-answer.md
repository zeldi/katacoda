#### SOLUTION
---

````
cat << EOF > ~/myansible/install.yml
---
- name: Install NGINX Server
  hosts: web
  gather_facts: False
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
    - name: copy index.html
      copy:
          src: files/index.html
          dest: /usr/share/nginx/html/index.html

EOF
```{{execute}}

Run playbook to install and deploy nginx service

`ansible-playbook -i myhosts.ini install.yml`{{execute}}

Test HTTP connection to node-1:
`curl localhost:8081/index.html`{{execute}}

Test HTTP connection to node-2:
`curl localhost:8082/index.html`{{execute}}

Test HTTP connection to node-3:
`curl localhost:8083/index.html`{{execute}}