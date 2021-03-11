# Running Ansible Imperatively (Adhoc Tasks)

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
ansible -i myhosts web -m shell -a date
```{{execute}}

