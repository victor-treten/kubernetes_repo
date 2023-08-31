#!/bin/bash

echo "+++++++++++++++++++++++++++++++++++++++++"
echo 

read -p "Enter a number: " NUM
echo


if [ $NUM -lt 100 ]
then
   echo "We have entered an IF block"
   sleep 2
   echo 
   echo "Your number is less than 100"
   echo
   date
   echo
else
   echo "Your number is greater than 100"
   echo
fi


echo "The scritp executed successful"


