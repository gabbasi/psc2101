#!/bin/bash
# first define the number and value

number_sum=$(( $1 + $2 + $3 ))
# if statemet about the sum if accede than display message
if [ $number_sum -gt 30 ]
then 
    echo "Sum exceeds maximum allowable"
exit
else
# if value is equal to 30 than it give the sum otherwise dispay sum exceede
    echo "the sum of $1 and $2 and $3 is $number_sum"
fi