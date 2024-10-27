#!/bin/bash

filename=$(date +"%d_%m_%Y_%H_%M_%S").status

source ./information.sh > "$filename"
