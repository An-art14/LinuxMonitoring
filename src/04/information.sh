#!/bin/bash

source ./colors.sh

echo  -e "${fond_one}${print_one}HOSTNAME\033[0m = ${fond_two}${print_two}$(hostname)\033[0m"

TIMEZONE=$(timedatectl | grep "Time zone" | awk '{print $3}')
UTC=$(timedatectl | grep "Time zone" | awk '{print $5}')
echo  -e "${fond_one}${print_one}TIMEZONE\033[0m = ${fond_two}${print_two}$TIMEZONE \033[0m ${fond_two}${print_two}UTC ${fond_two}${print_two}$UTC\033[0m"

echo -e "${fond_one}${print_one}USER\033[0m = ${fond_two}${print_two}$USER\033[0m"

OS_INFO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d'=' -f2- | tr -d '"')
echo -e "${fond_one}${print_one}OS\033[0m = ${fond_two}${print_two}$OS_INFO\033[0m"

echo -e "${fond_one}${print_one}DATE\033[0m = ${fond_two}${print_two}$(date +"%d %B %Y %H:%M:%S")\033[0m"

UPTIME=$(uptime -p | sed 's/up //' | tr -d ',')
echo -e "${fond_one}${print_one}UPTIME\033[0m = ${fond_two}${print_two}$UPTIME\033[0m"

UPTIME_SEC=$(cat /proc/uptime | awk '{print $1}')
echo -e "${fond_one}${print_one}UPTIME_SEC\033[0m = ${fond_two}${print_two}$UPTIME_SEC\033[0m"

echo -e "${fond_one}${print_one}IP\033[0m = ${fond_two}${print_two}$(hostname -I)\033[0m"

MASK=$(ifconfig | grep "netmask" | awk '{print $4}')
echo -e "${fond_one}${print_one}MASK\033[0m = ${fond_two}${print_two}$MASK\033[0m"

GATEWAY=$(ip route | grep "default" | awk '{print $3}')
echo -e "${fond_one}${print_one}GATEWAY\033[0m = ${fond_two}${print_two}$GATEWAY\033[0m"

RAM_TOTAL=$(free --bytes | grep Mem | awk '{printf "%.3f GB", $2/1000000000}')
echo -e "${fond_one}${print_one}RAM_TOTAL\033[0m = ${fond_two}${print_two}$RAM_TOTAL GB\033[0m"

RAM_USED=$(free --bytes | grep Mem | awk '{printf "%.3f GB", $3/1000000000}')
echo -e "${fond_one}${print_one}RAM_USED\033[0m = ${fond_two}${print_two}$RAM_USED GB\033[0m"

RAM_FREE=$(free --bytes | grep Mem | awk '{printf "%.3f GB", $4/1000000000}')
echo -e "${fond_one}${print_one}RAM_FREE\033[0m = ${fond_two}${print_two}$RAM_FREE GB\033[0m"

SPACE_ROOT=$(df -m / | awk 'NR==2 {printf "%.2f MB", $2}')
echo -e "${fond_one}${print_one}SPACE_ROOT\033[0m = ${fond_two}${print_two}$SPACE_ROOT\033[0m"

SPACE_ROOT_USED=$(df -m / | awk 'NR==2 {printf "%.2f MB", $3}')
echo -e "${fond_one}${print_one}SPACE_ROOT_USED\033[0m = ${fond_two}${print_two}$SPACE_ROOT_USED\033[0m"

SPACE_ROOT_FREE=$(df -m / | awk 'NR==2 {printf "%.2f MB", $4}')
echo -e "${fond_one}${print_one}SPACE_ROOT_FREE\033[0m = ${fond_two}${print_two}$SPACE_ROOT_FREE\033[0m\n"

source ./scheme.sh