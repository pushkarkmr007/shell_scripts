#! /bin/bash

########
#this is to create multiple folder
#1st argument is day
#2nd argument is starting folder number
#3rd argument is end 
#comment
#############
for (( i=$2 ; i<=$3 ; i++  ))
do
        mkdir  "$1$i"
done
