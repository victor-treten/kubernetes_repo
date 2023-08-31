#!/bin/bash

echo "+++++++++++++++++++++++++++++++++++++++++"
echo 

read -p "Enter a number: " NUM
echo


if [ $NUM -lt 100 ]
then
   echo "We have entered an IF block"
   sleep 3
   echo "Your number is less than 100"
fi


echo "The scritp executed successful"


