#!/bin/bash

#if [ "$#" -eq 0 ]; then
if [[ -z "$parameter" ]]; then
    echo "Incorrect input: No parameter specified"
    exit 1
fi