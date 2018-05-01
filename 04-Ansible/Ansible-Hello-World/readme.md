## Up Hosts

```bash
vagrant up
```

## Generate inventory files

```bash
./vagrant-ansible-hosts.sh
```
## Add hostnames to `/etc/hosts` or setup DNS on master machine.

... skip ...

## Run Ansible

```bash
sudo ansible all -i ansible_hosts.txt -m ping -f 1
```
