#!/bin/sh

if [ "$#" -ne 1 ]; then
	echo "Please specify interface."
	exit
fi

sudo service network-manager stop
sudo ifconfig $1 up
clear

echo "Setting $1 to type ibss"
sudo ifconfig $1 down
sudo iw dev $1 set type ibss
sudo rfkill unblock wifi
sudo ifconfig $1 up
sleep 1
sudo iw dev $1 ibss join My-Adhoc 2412
