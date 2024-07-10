#!/bin/bash


####################
#Author: Supriya
#Date: 25-06-2024
#About: Sample script to output node health of the system
#Version: v1
####################

set -x #debug mode
set -e #exit when there is error, this helps to prevent from execution of number of lines when there is an error.
set -o #pipefail
#Print disk space
df -h
#Print number of CPU's
nproc
#Print memory
free -g

#print process I
ps -ef | grep "amazon" | awk -F" " '{ print$2}'
