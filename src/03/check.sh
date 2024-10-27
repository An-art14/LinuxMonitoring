#!/bin/bash

if [ $# -ne 4 ]; then
    echo "Incorrect input: There should be 4 parameters."
    exit 1
else 

    if [[ $@ =~ [[:digit:]] ]]; then
        for i in $@; do
            if ! [[ $i =~ ^[1-6]$ ]]; then
            echo "Incorrect input: The parameter should be in the range 1-6."
            exit 1
            fi
        done
        if [[ $1 -eq $2 || $3 -eq $4 ]]; then
            echo "Incorrect input: The parameters should be different. Please, try again."
            else
            source ./colors.sh
            source ./information.sh
            fi
    else 
    echo "Incorrect input: The parameters should be numbers."
    exit 1
    fi
fi