#!/bin/bash
# Displays the size of the body of the response of a curl request

#curl -sI "$1" | grep -i Content-Length | cut -d " " -f2

#!/bin/bash

url=$1
response=$(curl -s -w "\n%{size_download}\n" "$url")
size=$(echo "$response" | tail -n 1)

echo "$size"
