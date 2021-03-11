# Preparation Work

---
Execute the following command to prepare the exercise environment. This operation takes about 1-2 minutes.

`yum install -y git && git clone https://github.com/zeldi/katacoda-scenarios.git && cd katacoda-scenarios/master-course-data/assets/tools/`{{execute}}

`bash ./kata_setup.sh`{{execute}}

# Updating /etc/hosts

For this lab environment we will be using hostnames to refer to ansible managed-nodes.  This is accomplished via host mapping in the `/etc/hosts` file.  

````
cat << EOF > /etc/hosts
127.0.0.1   localhost localhost.localdomain localhost4 localhost4.localdomain4
::1         localhost localhost.localdomain localhost6 localhost6.localdomain6
172.20.0.2  node-1
172.20.0.3  node-2
172.20.0.4  node-3
EOF
```{{execute}}

Use the Linux `cat` command to examine the `/etc/hosts` file:

`cat /etc/hosts`{{execute}}

Take note of the two following lines:

```
172.20.0.2  node-1
172.20.0.3  node-2
172.20.0.4  node-3
```

- The hostname `node-1' will resolve to `172.20.0.2`
- The hostname `node-2' will resolve to `172.20.0.3`
- The hostname `node-3' will resolve to `172.20.0.4`

# Connecting to managed nodes

If you want to manually login to each host you can ssh to their hostname.
Each managed node has been set `username=centos` and password=`centos`

To connect to `node-1` use the Linux `ssh` command:

`ssh centos@node-1`{{execute}}

Type exit to return back to the control node.

`exit`{{execute}}

To connect to `node-2` use the Linux `ssh` command:

`ssh centos@node-2`{{execute}}

Type exit to return back to the control node.

`exit`{{execute}}
