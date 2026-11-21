#!/bin/bash

number=$1

if [ $number -lt 0 ]; then
    echo "entered number is less than ZERO"
elif [ $number -eq 0 ]; then
    echo "entered number is equal to ZERO"
else
    echo "entered is greater than ZERo"
fi
