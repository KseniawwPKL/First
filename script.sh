#!/bin/bash
if [ $# -ne 2 ]; then
    echo "Введите: $0 входную, выходную"
    exit 1
fi
input="$1"
output="$2"
for file in $(find "$input" -type f); do
    filename=$(basename "$file")
    if [ -e "$output/$filename" ]; then
        counter=1
        while [ -e "$output/$filename.$counter" ]; do
            counter=$((counter + 1))
        done
        cp "$file" "$output/$filename.$counter"
    else
        cp "$file" "$output/$filename"
    fi
done

