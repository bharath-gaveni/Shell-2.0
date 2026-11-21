#!/bin/bash

Date=$(date)

START_TIME=$(date +%s)
sleep 10
END_TIME=$(date +%s)

ACTUAL_TIME=$($START_TIME-$END_TIME)

echo "time taken for the script to exceute in $ACTUAL_TIME sec"