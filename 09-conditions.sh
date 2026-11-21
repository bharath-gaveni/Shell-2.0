#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR:: Please run this script with root user privilage"
    exit 1
fi

dnf install nginx -y

# $? is previous command exit status
if [ $? -ne 0 ]; then
    echo "ERROR:: Failure in installing Nginx"
    exit 1
else
    echo "nginx installation is success"
fi
