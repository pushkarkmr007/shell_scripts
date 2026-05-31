#this script is to add users to this machine

#! /bin/bash

#echo "Enter the username to add:"

read -p "please Enter username to add:" username

useradd -m -s /bin/bash $username

echo "new user $username added"
