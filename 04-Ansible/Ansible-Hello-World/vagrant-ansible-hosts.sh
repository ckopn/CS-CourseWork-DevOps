#!/usr/bin/env bash
DIR=$(pwd | sed "s/\//\\\\\//g")
HOSTS=ansible_hosts


echo "vanilla.com" > $HOSTS
echo "[all:vars]" >> $HOSTS
echo "host_domain=vanilla.com" >> $HOSTS
echo "ansible_host='{{ inventory_hostname }}.{{ host_domain }}'" >> $HOSTS
echo "ansible_connection=ssh" >> $HOSTS
echo "ansible_user=vagrant" >> $HOSTS
echo "ansible_python_interpreter=/usr/bin/python3.6" >> $HOSTS



vagrant ssh-config| \
grep -iE "key|host|port" | \
grep -ivE "strict|user" | \
sed "s/^  //" | \
sed "s/$DIR\///" | \
awk '{
	row= ( NR/4 == int(NR/4)) ? NR/4 : int(NR/4)+1;
	if ( array[row] == "" ) {
		array[row] = $2
	} else {
		array[row]= array[row] " " $2
	}
}
END {
	for( i=1; i<= row; i++){
		print( array[i] )
	}
}
' | \
sed "s/\"//g" | \
awk '{print $1, "ansible_port="$3, "ansible_private_key_file="$4}' >> $HOSTS
