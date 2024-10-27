#!/bin/bash

if [[ $column1_background == '2' ]]; then 
    echo "Column 1 background = 2 (red)"
fi

if  [[ $column1_font_color == '4' ]]; then  
    echo "Column 1 font color = 4 (blue)"
fi

if [[ $column2_background == '5' ]]; then 
    echo "Column 2 background = 5 (purple)"
fi

if [[ $column2_font_color == '1' ]]; then 
    echo "Column 2 font color = 1 (white)"
fi

if [[ -z $column1_background ]]; then 
    echo "Column 1 background = default (black)"
fi

if [[ -z $column1_font_color ]]; then 
    echo "Column 1 font color = default (white)"
fi

if [[ -z $column2_background ]]; then 
    echo "Column 2 background = default (read)"
fi

if [[ -z $column2_font_color ]]; then 
    echo "Column 2 font color = default (blue)"
fi