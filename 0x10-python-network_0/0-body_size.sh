#!/bin/bash
# Displays the size of the body of the response of a curl request
curl -sI "$1" | grep -i Content-Length | cut -d " " -f2
