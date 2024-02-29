#!/bin/bash

#https://unix.stackexchange.com/questions/136337/error-when-calling-mv-with-wildcards <-- 여기서 wildcard에러 참조

chmod +x arrange.sh
ABSOLUTE_PATH="SWE_2021_41_2023_2_week_4-main"

for cur_alpha in {a..z};
do
    set -- "$ABSOLUTE_PATH/files/$cur_alpha"*.txt
    if [ -e "$1" ]; then
        mv "$@" "$ABSOLUTE_PATH/$cur_alpha"
    fi
    #mv -f "$ABSOLUTE_PATH/files/$cur_alpha"* "$ABSOLUTE_PATH/$cur_alpha"
    
    cur_alpha_upper=$(echo "$cur_alpha" | tr '[:lower:]' '[:upper:]')

    set -- "$ABSOLUTE_PATH/files/$cur_alpha_upper"*.txt
    if [ -e "$1" ]; then
        mv "$@" "$ABSOLUTE_PATH/$cur_alpha"
    fi
    #mv -f "$ABSOLUTE_PATH/files/$cur_alpha_upper"* "$ABSOLUTE_PATH/$cur_alpha_upper"

done