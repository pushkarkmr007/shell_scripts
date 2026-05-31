#! /bin/bash
read -p "Enter any number to check if odd or even: " number

if (($number % 2 ==0));
then
        echo "the $number is even"
else
        echo "the number is odd"
fi
