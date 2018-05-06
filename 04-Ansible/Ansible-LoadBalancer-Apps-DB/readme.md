### enviropment setup for Ansible test deployment.

```bash
# Start Machine.
vagrant up

# Generate ansible hosts file.
# use mac specific awk/sed syntax
vagrant-ansible-hosts.sh > roles/hosts

# Add IPs to hosts file to resolv it correctly.
declare -a arr=("balancer" "application-1" "application-2" "database")
for subdomain in "${arr[@]}"; do
	echo "127.0.0.1	$subdomain.vanilla.com" >> /etc/hosts;
done

# Prepare Python 3.6 for ansible
python3.6 -m venv .env
source .env/bin/activate
python3.6 -m pip install ansible

# So we can start work.
cd roles

# Test Your Connection (add `keys` etc..)
# in case if you want to have known_hosts clean
# delete records afterwards or follow this intstructions
# https://github.com/hashicorp/vagrant/issues/8628
sudo ansible all -i hosts -m ping -f 1

# install and run everything
sudo ansible-playbook -i hosts all-in-one.yml -f 1 -b
```

Visit [127.0.0.1:8080](http://127.0.0.1:8080) to see results


