#!/bin/bash

echo "please enter your number"
read number

if [ $(($number % 2)) ]; then
    echo "entered number is EVEN"
else
    echo "entered number is ODD"
fi

