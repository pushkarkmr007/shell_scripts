
#this is to test if statement

#! /bin/bash

read -p "please Enter a number: " number

if [ $number -gt 100 ];
then 
        echo "$number is greater than 100"
elif [ $number -eq 100 ];
then
        echo "you entered 100 which is equal"
else
        echo "$number is less than 100"
fi
