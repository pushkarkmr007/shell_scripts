#! /bin/bash 

process="httpd"

if pgrep $process >> /dev/null;
then
        echo "process httpd running"
else
        echo "process httpd not running"
fi
