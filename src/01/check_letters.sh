#!/bin/bash

if  [[ "$parameter" =~ ^[a-zA-Z]+$ ]]; then
    source ./check_amount_parameters.sh
    echo "$parameter"
else
    echo "Incorrect input: The parameter is a number. Enter text"
    exit 1
fi