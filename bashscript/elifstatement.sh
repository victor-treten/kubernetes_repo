#!/bin/bash

echo "+++++++++++++++++++++++++++++++++++++++++"
echo 

read -p "Enter a number: " NUM
echo


if [ $NUM -eq 100 ]
then
   echo 
   echo "You have passed with a high grade"
   echo
elif [ $NUM -lt 80 ]
then 
   echo "you passed with a fair mark"
   echo 
else
   echo "you have failed"
   echo 
fi


echo "The scritp executed successful"


