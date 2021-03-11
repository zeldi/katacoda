#### SOLUTION
---

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
    - name: copy index.html
      copy:
          src: files/index.html
          dest: /usr/share/nginx/html/index.html

EOF
```{{execute}}

Run `install.yml` playbook

`ansible-playbook -i myhosts.ini install.yml`{{execute}}

Test HTTP connection:
`curl node-1:80/index.html`{{execute}}