#!/bin/bash

start_time=$(date +%s)

if [ $# -ne 1 ]; then
    echo "Incorrect input: There should be one parameter"
    exit 1
fi

dir=$1

if [[ ! -d $dir ]]; then
    echo "Incorrect input: The parameter is not a directory"
    exit 1
else
    source ./folder_info.sh
fi

end_time=$(date +%s)
execution_time=$((end_time - start_time))
echo "Script execution time (in seconds) = $execution_time"
