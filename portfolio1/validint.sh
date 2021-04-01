#!/bin/bash

# ask user to enter two digit numeric code
while true
do
    echo please inter two digit unmeric code 20 0r 40
    #read user input
    read user_input

    #check user input an integer 
    if ! [[ "$user_input" =~ ^[0-9]+$ ]]
    then

        #display error message if input is not integer and ask them to try agi
        echo Error! input must be a numeric value please try again


    else
        #checkif input is 20 OR 40
        if [[ $user_input -eq 20 || $user_input -eq 40 ]]
        then
            # if true break loop and end script
            break
        else
            #else display error message and continue loop
            echo Error! input must be 20 OR 40.
        fi
    fi
done

