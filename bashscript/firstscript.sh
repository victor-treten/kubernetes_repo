#!/bin/bash


## This scripts prints system information ##

echo "welcome to bash scritp"
echo

#checking system uptime
echo "#########################################"
echo "The uptime of the system"
uptime
echo

# Memory Utilization
echo "##########################################"
echo "The memory of the system"
free -m
echo

# Check the disk usage
echo "##########################################"
echo "check for disk usage"
df -h