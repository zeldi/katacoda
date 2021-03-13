# Running Ansible Imperatively (Adhoc Tasks)
---

To run an ad-hoc task, using a single module, use ansible command. Running an ad-hoc task is also called as `imperative command`

For example, to check the availability of all the hosts/nodes, we can call `ping` module of ansible.

````
ansible web -i myhosts.ini -m ping
```{{execute}}

* `web` = the group name to run against. You can also use the name of an individual host, so node-1 would work just as well for this example.

* `myhosts.ini` = name of the inventory file listing all available hosts

* `ping` = a ping module from ansible

To check the current date and time of the remote host:

```
ansible -i myhosts.ini web -m shell -a date
```{{execute}}

* `web` = the group name to run against. You can also use the name of an individual host, so node-1 would work just as well for this example.

* `myhosts.ini` = name of the inventory file listing all available hosts

* `shell` = a shell module from ansible (used to execute linux shell command)

* `date` = argument for the module, in this case a standard shell command date.

## Exercise: Remotely Perform a Shell Command on the Target

Now let us perform the first remote shell command.

1. Perform adhoc tasks on all the target nodes

`ansible all -i myhosts.ini -m shell -a "echo 'hello ansible...' > testfile"`{{execute}}

2. Perform adhoc tasks only on `node-1` and `node-2`

`ansible 'node-1,node-2' -i myhosts.ini -m shell -a "echo 'hello ansible...' > testfile"`{{execute}}

