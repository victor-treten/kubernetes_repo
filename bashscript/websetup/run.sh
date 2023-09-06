#!/bin/bash

USR='devops'


for host in `cat hosts`
do 
   echo 
   echo "+++++++++++++++++++++++++++++++++++++++++++++++++"
   echo "Connecting to $host"
   echo "Pushing script to $host"
   scp setup.sh $USR@$host:/tmp
   echo "Executing script on $host"
   ssh $USR@$host sudo /tmp/setup.sh
   ssh $USR@$host sudo rm -fr /tmp/setup.sh
   echo "+++++++++++++++++++++++++++++++++++++++++++++++++"
   echo
done
