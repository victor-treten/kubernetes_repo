#!/bin/bash

echo "+++++++++++++++++++++++++++++++++++++++++++++++++"
echo

date
echo

##ls /var/run/httpd/httpd.pid &> /dev/null

if [ -f /var/run/httpd/httpd.pid &> /dev/null ]
then 
    echo "Httpd process is running"
    echo 

else 

    echo "Httpd process is NOT runnin"
    echo 
    echo "Starting the process"
    systemctl start httpd
    if [ -f /var/run/httpd/httpd.pid &> /dev/null ]
    then 
       echo "Process started successfully"
       echo
    else 
       echo "process starting failed, contact the admin"
       echo 

    fi
fi

echo "Script executed successffuly"
echo 

echo "+++++++++++++++++++++++++++++++++++++++++++"
