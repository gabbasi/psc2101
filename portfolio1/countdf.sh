#!/bin/bash
 #go to user specified directory
 cd $1
 #declare variables
 full_dir=0;
 empty_dir=0;
 empty_files=0;
 data_files=0;
 #start for loop to test
for i in *; do
#if it is a directory
if [ -d "$i" ]; then
    #test if empty
    if [ -z "$(ls -A "$i")" ]; then 
        #Count empty directories
        empty_dir=$((empty_dir+1))
    else
        #count directories containing data
        full_dir=$((full_dir+1))
    fi
else
    #if file contain data
    if [ -s "$i" ]; then
       #count files conatining data
        data_files=$((data_files+1))
    else
        #count empty files
        empty_files=$((empty_files+1))
    fi

fi
done
echo empty directories = $empty_dir
echo Directories containing data = $full_dir
echo data files = $data_files
echo empty files = $empty_files
