#!/bin/bash
if [ $# -ne 1 ]; then
    echo "Usage: $0 (temp)"
    exit 1
fi

grad=$1
f=$((grad*9/5+32))
echo "$grad C = $f F"
if [ "$grad" -lt 0 ]; then
    echo "Freezing"
elif [ "$grad" -gt -1 -a "$grad" -lt 15 ]; then
    echo "Cold"
elif [ "$grad" -gt 14 -a "$grad" -lt 30 ]; then
    echo "Warm"
else
    echo "Hot"
fi
