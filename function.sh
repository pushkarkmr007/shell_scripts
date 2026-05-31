#! /bin/bash 

threshold=10
#usage=$( df -hT / | grep "/" | awk '{print$6}'| sed 's/%//' )


use=$( df -hT / | grep "/" | awk '{print$6}' | sed 's/%//' )

if [ $use -gt $threshold ];
then
        echo "Disk use abve threshold!!!  $use% used "
else
        echo "Disk use under threshold value"
fi
