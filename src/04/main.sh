#!/bin/bash

if [ $# -ne 0 ]; then
    echo "Incorrect input: There should be no parameters"
    exit 1
else 
    source ./colors.sh
    source ./information.sh
fi