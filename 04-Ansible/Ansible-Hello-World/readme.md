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

## Clear known Hosts if its reintiation (mac)

```bash
sudo unlink /var/root/.ssh/known_hosts
```

## Run Ansible

```bash
sudo ansible all -i ansible_hosts.txt -m ping -f 1
```
