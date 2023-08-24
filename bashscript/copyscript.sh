#!/bin/bash

# A simple script to copy 
cp $1 $2

ls $2

# Verify the copy
echo "details for $2"
ls -lh $2