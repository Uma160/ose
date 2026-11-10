#!/bin/bash

# 1. Проверяем количество аргументов
if [ $# -ne 2 ]; then
    echo "Usage: $0 <number> <unit>"
    exit 1
fi

# 2. Проверяем на отрицательное число
if [ "$1" -lt 0 ]; then
    echo "Number must not be negative"
    exit 3
fi

# 3, 4 и 5. Считаем и сразу выводим результат
case "$2" in
    km|KM)   echo "$1 $2 = $(($1 * 1000)) m" ;;
    m|M)     echo "$1 $2 = $(($1 * 100)) cm" ;;
    h|H)     echo "$1 $2 = $(($1 * 60)) min" ;;
    min|MIN) echo "$1 $2 = $(($1 * 60)) s" ;;
    kg|KG)   echo "$1 $2 = $(($1 * 1000)) g" ;;
    *)
        echo "Unknown unit: $2"
        echo "Units: km m h min kg"
        exit 2
        ;;
esac
