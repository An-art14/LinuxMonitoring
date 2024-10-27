#!/bin/bash

echo "HOSTNAME = $(hostname)"

TIMEZONE=$(timedatectl | grep "Time zone" | awk '{print $3}')
UTC=$(timedatectl | grep "Time zone" | awk '{print $5}')
echo "TIMEZONE = $TIMEZONE UTC $UTC"

echo "USER = $USER"

OS_INFO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d'=' -f2- | tr -d '"')
echo "OS = $OS_INFO"

echo "DATE = $(date +"%d %B %Y %H:%M:%S")"

UPTIME=$(uptime -p | sed 's/up //' | tr -d ',')
echo "UPTIME = $UPTIME"

UPTIME_SEC=$(cat /proc/uptime | awk '{print $1}')
echo "UPTIME_SEC = $UPTIME_SEC"

echo "IP = $(hostname -I)"

MASK=$(ifconfig | grep "netmask" | awk '{print $4}')
echo "MASK = $MASK"

GATEWAY=$(ip route | grep "default" | awk '{print $3}')
echo "GATEWAY = $GATEWAY"

RAM_TOTAL=$(free --bytes | grep Mem | awk '{printf "%.3f Gb", $2/1000000000}')
echo "RAM_TOTAL = $RAM_TOTAL Gb"

RAM_USED=$(free --bytes | grep Mem | awk '{printf "%.3f Gb", $3/1000000000}')
echo "RAM_USED = $RAM_USED Gb"

RAM_FREE=$(free --bytes | grep Mem | awk '{printf "%.3f Gb", $4/1000000000}')
echo "RAM_FREE = $RAM_FREE Gb"

SPACE_ROOT=$(df -m / | awk 'NR==2 {printf "%.2f MB", $2}')
echo "SPACE_ROOT = $SPACE_ROOT"

SPACE_ROOT_USED=$(df -m / | awk 'NR==2 {printf "%.2f MB", $3}')
echo "SPACE_ROOT_USED = $SPACE_ROOT_USED"

SPACE_ROOT_FREE=$(df -m / | awk 'NR==2 {printf "%.2f MB", $4}')
echo "SPACE_ROOT_FREE = $SPACE_ROOT_FREE"