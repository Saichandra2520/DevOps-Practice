#!/bin/bash

ID=$(id -u)

VALIDATE(){
    if [ $? -ne 0 ]
    then
        echo "$1 ..... Failed"
        exit 1
    else
        echo "Successfully installed"
    fi
}

if [ $ID -ne 0 ]
then
    echo "You must be root to run this script"
    exit 1
else
    echo "You are root"
fi

yum install mysql -y

VALIDATE $? "Installing MySQL"