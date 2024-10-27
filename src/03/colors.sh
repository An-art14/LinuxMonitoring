#!/bin/bash

b_white="\033[107m"
b_red="\033[101m"
b_green="\033[102m"
b_blue="\033[104m"
b_purple="\033[105m"
b_black="\033[40m"

f_white="\033[97m"
f_red="\033[91m"
f_green="\033[92m"
f_blue="\033[94m"
f_purple="\033[95m"
f_black="\033[30m"

fond_one=$1
print_one=$2
fond_two=$3
print_two=$4

if [[ $fond_one == '1' ]]; then
    fond_one=${b_white}
elif [[ $fond_one == '2' ]]; then
    fond_one=${b_red}
elif [[ $fond_one == '3' ]]; then
    fond_one=${b_green}
elif [[ $fond_one == '4' ]]; then
    fond_one=${b_blue}
elif [[ $fond_one == '5' ]]; then
    fond_one=${b_purple}
elif [[ $fond_one == '6' ]]; then
    fond_one=${b_black}
fi

if [[ $print_one == '1' ]]; then
    print_one=${f_white}
elif [[ $print_one == '2' ]]; then
    print_one=${f_red}
elif [[ $print_one == '3' ]]; then
    print_one=${f_green}
elif [[ $print_one == '4' ]]; then
    print_one=${f_blue}
elif [[ $print_one == '5' ]]; then
    print_one=${f_purple}
elif [[ $print_one == '6' ]]; then
    print_one=${f_black}
fi

if [[ $fond_two == '1' ]]; then
    fond_two=${b_white}
elif [[ $fond_two == '2' ]]; then
    fond_two=${b_red}
elif [[ $fond_two == '3' ]]; then
    fond_two=${b_green}
elif [[ $fond_two == '4' ]]; then
    fond_two=${b_blue}
elif [[ $fond_two == '5' ]]; then
    fond_two=${b_purple}
elif [[ $fond_two == '6' ]]; then
    fond_two=${b_black}
fi

if [[ $print_two == '1' ]]; then
    print_two=${f_white}
elif [[ $print_two == '2' ]]; then
    print_two=${f_red}
elif [[ $print_two == '3' ]]; then
    print_two=${f_green}
elif [[ $print_two == '4' ]]; then
    print_two=${f_blue}
elif [[ $print_two == '5' ]]; then
    print_two=${f_purple}
elif [[ $print_two == '6' ]]; then
    print_two=${f_black}
fi
