#!/bin/bash

MYUSERS="Nicole Karo Julius Abayomi Sammy Victor"

for urs in $MYUSERS
do
   echo "Looping..."
   sleep 1
   echo "+++++++++++++++++++++++++++++++++++++"
   echo "Adding user $urs."
   sudo useradd $urs
   sudo id $urs
   echo "+++++++++++++++++++++++++++++++++++++"
   echo 
done