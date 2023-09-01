#!/bin/bash

counter=0

while [ $counter -lt 5 ]
do 
   echo "Looping..."
   echo "The value of counter is $counter"
   sleep 1
   counter=$(( $counter + 1 ))
done

echo "Out of the loop"