#!/bin/sh

if [ "$#" -ne 1 ]; then
	echo "Please specify interface."
	exit
fi

echo "Stopping wpa_supplicant"
sudo service network-manager stop
sudo killall wpa_supplicant
sleep 2

echo "Starting wpa_supplicant"
sudo wpa_supplicant -B -i $1 -c wpa_supplicant-adhoc.conf -D nl80211,wext
