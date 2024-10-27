#!/bin/bash

if [ "$#" -eq 0 ]; then
   source ./information.sh
else 
    echo "Incorrect input: There should be no parameters"
    exit 1
fi

read -p "Do you want to write this data to the file?(Y/N) " ANSWER

if [[ "$ANSWER" == "Y" || "$ANSWER" == "y" ]]; then
    source ./save_to_file.sh
    echo "Data has been saved to the file $filename"
elif 
    [[ "$ANSWER" == "N" || "$ANSWER" == "n" ]]; then
    echo "Data has not been saved to the file"
fi