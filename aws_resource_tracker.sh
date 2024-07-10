#!/bin/bash
########################################
#Author: supriya
#Date: 09-july-2024

#This script will report AWS resource usage
#######################################

#AWS s3
#AWS EC2
#AWS Lambda
#AWS IAM

set -x #debug


#List s3 buckets (if created)
echo "List of S3 buckets"
aws s3 ls  #>> resource_tracker.sh

#list EC2 instances(if created)
echo "List of EC2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' # >> resource_tracker.sh

#List of lambda functions
echo "List of Lambda functions"
aws lambda list-functions  #>> resource_tracker.sh 

#List IAM user
echo "List IAM user"
aws iam list-users  #>> resource_tracker.sh 
#pipe concept

