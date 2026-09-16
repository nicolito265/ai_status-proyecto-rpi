#!/bin/bash

echo Estado_del_Sistema && echo ''
cat /sys/class/thermal/thermal_zone0/temp > cpuTemp.txt
truncate -s -4 cpuTemp.txt
echo -n "Temperatura CPU (°C): " && cat cpuTemp.txt
echo ''
fastfetch | grep "Memory"
fastfetch | grep "Swap"
echo "Ping a Google: " && ping -c 1 8.8.8.8 | grep "packet loss"

