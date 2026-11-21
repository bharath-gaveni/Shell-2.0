#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR:: Please run this script with root user privilage"
fi

dnf install nginx -y

# $? is previous command exit status
if [ $? -ne 0 ]; then
    echo "ERROR:: Failure in installing Nginx"
else
    echo "nginx installation is success"
fi
