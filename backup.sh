#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 (a file name)"
    exit 1
fi

name=$1

# Проверяем файл на различные ситуации (важен порядок проверки!)
# Ситуация: файл не существует
if [ ! -e "$name" ]; then
    echo "Not found: $name"
    exit 2
fi

#директория, а не файл
if [ -d "$name" ]; then
    echo "$name is a directory, not a file"
    exit 3
fi


if [ ! -r "$name" ]; then
    echo "Cannot read: $name"
    exit 4
fi


current_date=$(date +%F)

# Формируем имя резервной копии
dest="${name}.${current_date}.bak"

# Копируем файл
cp "$name" "$dest"

# Получаем размер
size=$(wc -c < "$dest")


echo "Backup created: $dest ($size bytes)"
