#!/bin/bash

# TODO: Output to file

file="quotes.txt"
while read -r line; do
    quote=$(echo $line | grep -oe "^[^\.]*")
    author=$(echo $line | grep -oe "[^~]*$")
    echo $author once said, \"$quote.\"
done < "$file"
