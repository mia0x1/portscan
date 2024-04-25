#!/bin/bash

# User should be able to input portrange or single port - otherwise scan well known ports

ip_address=$1
# Per default we are using well known ports. These are overwritten when the user passes port numbers as parameters
port_first=1
port_last=1023

if [ -z "$ip_address" ]; then
    echo 'You need to run the script like this: ./portscan.sh $IP [$firstport] [$lastport]'
    exit 1
fi

# If 3 arguments are given (IP address, first port and last port, port variables will be replaced by the user input)

if [ $# -eq 3 ]; then
    port_first=$2
    port_last=$3
fi

# Scan for open ports

echo "Scanning remote host $ip_address for open TCP ports in the range between $port_first and $port_last"

for (( port=port_first; port<=port_last; port++ ))
do
    (echo >/dev/tcp/"$ip_address"/"$port") &>/dev/null && echo "Port $port is open"
    sleep 0.01
done