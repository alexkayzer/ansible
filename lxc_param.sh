#!/bin/bash
ip_range=$(seq 40 | sed 's/^/192.168.90./')
for free_ip in $ip_range
	do 
		if ( ping -c 1 $free_ip > /dev/null; [ $? -ne 0 ] )
			then
			break
		fi
	done
echo $free_ip  

# WORKING 100% !!!!!!!!!!!!!!!!!!!
#for ip in $(seq 1 20); 
#	do 
#		a=$(ping -c 1 192.168.90.$ip > /dev/null; [ $? -ne 0 ] && echo "192.168.90.$ip")
#	 if [ -n "$a" ]
#	  then b=$a
#	 fi
# done
#echo $b

