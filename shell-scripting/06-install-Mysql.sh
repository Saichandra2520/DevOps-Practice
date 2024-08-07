#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "You must be root to run this script"
    exit 1
else
    echo "You are root"
fi

yum install mysql -y

if [ $? -ne 0 ]
then
    echo "Failed to install mysql"
    exit 1
else
    echo "Successfully installed"
fi