#!/bin/bash

ID=$(id -u)

TIMESTAMP=$(date +%F-%H-%M-%S)

LOGFILE="/tmp/$0-$TIMESTAMP.log"

VALIDATE(){
    if [ $? -ne 0 ]
    then
        echo "$1 ..... Failed"
        exit 1
    else
        echo "$1 Successfully installed"
    fi
}

if [ $ID -ne 0 ]
then
    echo "You must be root to run this script"
    exit 1
else
    echo "You are root"
fi

yum install mysql -y &>> $LOGFILE

VALIDATE $? "Installing MySQL"