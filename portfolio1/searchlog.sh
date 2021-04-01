#!/bin/bash
read -p "Please enter the Log.txt file path or press [Enter] for default path" file_path
if ! [ $file_path]; then
    file_path=$(pwd)
    file_path="$file_path/log(scripting).txt"
fi
while true
do
    program_stat=""
    search_pattern=""
    user_input=""
    no_of_matches=""
    match_on_lines=""
    echo "Please choose from thr options below"
    read -p "To quit program [Q] or press [Enter] to continue." program_stat
    #if user presses Q/q quit the program
    if [[ "$program_stat" == "Q" || "$program_stat"  == "q" ]]; then
        break
    else
        read -p "Enter the pattern to be searched   >" search_pattern
        echo "To search for whole word press [W]."
        echo "To any match on line press [A]."
        #echo message and get user input
        read -p "To do an inverted match i.e retrieve the line that do not contain the patteren press [R]  >" user_input
        #if user press "w" then find whole word
        if [[ "$user_input" == "w" || "$user_input" == "W" ]]; then 
            no_of_matches=$(grep  -w -o "$search_pattern" "$file_path" | wc -w)
            #display line umber with found word
            match_on_lines=$(grep  -o -n  "$search_pattern" "$file_path")
            #if user select "a" then look for a pattern
        elif [[ "$user_input" == "A" || "$user_input" == "a" ]]; then 
            no_of_matches=$(grep  -o "$search_pattern" "$ile_path" | wc -w)
            match_on_lines=$(grep  -o -n  "$search_pattern" "$file_path")
            #if user press R then look for line with does not contain the pattern
        elif [[ "$user_input" == "R" || "$user_input" == "r" ]]; then 
        no_of_matches=$(grep -v "$search_pattern" "$file_path")
        fi
    fi    
    echo Total number of matches found = $no_of_matches
    echo line numbers $match_on_lines
done