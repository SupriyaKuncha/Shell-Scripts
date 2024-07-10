#!/bin/bash
#sample program to demonstrate ifelse statement.
###########
#Author: Supriya
#Date: 26-06-2024
##########
set -x
set -e

a=4
b=5

if [ $a -gt $b ]
then
	echo "a is greater than b."
else
	echo "b is greater than a."
fi #end if  statement
