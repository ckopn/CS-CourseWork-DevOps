# DHCP 

```bash
vagrant init
vagrant ssh server
[vagrant] sudo tcpdump -w /vagrant/tcpdump.pcap -i eth1
```

give it some time, then kill it (`cmd+c`)

```bash
tcpdump -r /vagrant/tcpdump.pcap
#or 
exit
# and run locally 
scp -i .vagrant/machines/server/virtualbox/private_key -P 2222  vagrant@127.0.0.1:/vagrant/tcpdump.pcap .
tcpdump -r tcpdump.pcap
```