#!/bin/bash

USR='devops'


for host in `cat remhost`
do 
   echo 
   echo "+++++++++++++++++++++++++++++++++++++++++++++++++"
   echo "Connecting to $host"
   echo "Pushing script to $host"
   scp webdeploy.sh $USR@$host:/tmp
   echo "Executing script on $host"
   ssh $USR@$host sudo /tmp/webdeploy.sh
   ssh $USR@$host sudo rm -fr /tmp/webdeploy.sh
   echo "+++++++++++++++++++++++++++++++++++++++++++++++++"
   echo
done
