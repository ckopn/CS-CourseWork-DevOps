#!/usr/bin/env bash
DIR=$(pwd | sed "s/\//\\\\\//g")

echo "[puppets]" > ansible_hosts.txt

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
awk '{print $1".vanilla.com", "ansible_connection=ssh", "ansible_user=vagrant", "ansible_port="$3, "ansible_private_key_file="$4}' >> ansible_hosts.txt
