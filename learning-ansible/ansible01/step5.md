# Running Ansible Declaratively (Using Ansible Playbook)
---

## Ansible Playbook Overview

Playbooks are Ansible’s configuration, deployment, and orchestration language. They can describe a policy you want your remote systems to enforce, or a set of steps in a general IT process.

## Ansible Playbook components

A playbook is where you can take some of those ad-hoc commands you just ran and put them into a repeatable set of plays and tasks.

Playbooks are text files written in YAML format and therefore need:

* to start with three dashes (---)

* proper indentation using spaces and __NOT__ tabs!

There are some important concepts:

* __hosts__: the managed hosts to perform the tasks on

* __tasks__: the operations to be performed by invoking Ansible modules and passing them the necessary options.

* __become__: privilege escalation in Playbooks, same as using -b in the ad hoc command.

## Examine the Ansible Playbooks

Let's create a playbook called `sync.yml` that perform the following tasks:
1. Create a `inventory` directory on all target nodes
2. Copy `myhosts.ini` file to `inventory` directory on all target nodes

```
--- 
- name: "Directory syncronization"
  hosts: web
  remote_user: centos
  tasks: 
    - name: "Create directory"
      file: 
        path: /home/centos/inventory
        state: directory
    - name: copy file
      copy:
        src: /root/myansible/myhosts.ini
        dest: /home/centos/inventory/myhosts.ini

```

## Execute the Ansible Playbook

Use the `ansible-playbook` command to execute the playbook sync.yml:

`ansible-playbook -i myhosts.ini sync.yml`{{execute}}