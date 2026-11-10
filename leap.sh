#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 (a year)"
    exit 1
fi

year=$1
if [ $year -gt 0 ]; then
    if (( year % 400 == 0 || (year % 4 == 0 && year % 100 != 0) )); then
        echo "$year is a leap year (366 days)"
    else
        echo "$year is not a leap year (365 days)"
    fi
else
    echo "Year must be positive"
fi
