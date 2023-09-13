#!/bin/bash

echo "++++++++++++++++++++++++++++++++++++++"
echo

value=`ip addr show | grep -v LOOPBACK | grep -ic mtu`

if [ $value -eq 1 ]
then
   echo "You have 1 active network interface present"
   echo 
elif [ $value -gt 1 ]
then 
   echo "You have multiple network interface present"
   echo 
else 
   echo "You have no active network interface"
   echo

fi

echo "script executed successfully"

echo
echo "+++++++++++++++++++++++++++++++++++++++++++"
