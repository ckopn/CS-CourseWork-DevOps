## Add Hook Comands in Ansible

  - `ping`
  - `setup` - return facts about machine
  - `yum` - install some yum package
  - `service`
  - `command`

    ```bash
    ansible
    ```
###

```
sudo ansible balancer -i ansible_hosts  -m yum -a "name=nginx state=latest"  -f 1 -b

sudo ansible balancer -i ansible_hosts  -m service -a "name=nginx state=started" -f 1 -b

sudo ansible balancer -i ansible_hosts  -m command -a "whoami" -f 1 -b
```



# Питання
 - як встановлювати ансіблю екзекютабл на хості
 "ansible_python": "executable": "/usr/bin/python",
