#!/usr/bin/env bash

# System Information Script

show_heading(){
	echo " ======================================= "
	echo " 		System Informaton	"
	echo " ======================================= "
}

show_user(){
	echo "Username: $(whoami)"
}

show_hostname(){
	echo "Hostname: $(hostname)"
}

show_date(){
	echo "Date and Time: $(date)"
}

show_os(){
	echo "Operating System: "
	grep PRETTY_NAME /etc/os-release
}

show_uptime(){
	echo "System Up time: "
	uptime -p
}

show_disk(){
	echo "Disk Usage: " 
	df -h /
}

show_memory(){
	echo "Memory Information: "
	free -h
}

show_heading

show_user
show_hostname
show_date
show_os
show_uptime
show_disk
show_memory

echo " ======================================== "
echo "System Information Completed."
