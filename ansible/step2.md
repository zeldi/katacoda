# Exploring and understanding the lab environment

 You have access to the following hosts:

| Role                    | Inventory name | IP Address     |
| ------------------------| ---------------| ---------------|
| Ansible Control node    | host01         | `[[HOST1_IP]]` |
| Managed node-1 (Docker) | node-1         | 172.20.0.2 |
| Managed node-2 (Docker) | node-2         | 172.20.0.3 |

A control node is any machine with Ansible installed. 

# Examining /etc/hosts

For this lab environment we will be using hostnames.  This is accomplished via host mapping in the `/etc/hosts` file.  Use the Linux `cat` command to examine the `/etc/hosts` file:

`cat /etc/hosts`{{execute}}

Take note of the two following lines:

```
[[HOST2_IP]] host02 node01
[[HOST3_IP]] host03 node02
```

- The hostname `host02` or `node01` will resolve to `[[HOST2_IP]]`
- The hostname `host03` or `node02` will resolve to `[[HOST3_IP]]`

# Connecting to hosts

If you want to manually login to each host you can ssh to their hostname.

To connect to `host02` use the Linux `ssh` command:

`ssh host02`{{execute}}

Type exit to return back to the control node.

`exit`{{execute}}

To connect to `host03` use the Linux `ssh` command:

`ssh host03`{{execute}}

Type exit to return back to the control node.

`exit`{{execute}}