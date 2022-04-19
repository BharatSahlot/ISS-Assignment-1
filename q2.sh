#!/bin/bash

file=$1
while read -r line; do
    quote=$(echo $line | grep -oe "^[^\.]*")
    author=$(echo $line | grep -oe "[^~]*$")
    echo $author once said, \"$quote.\" >> speech.txt
done < "$file"
