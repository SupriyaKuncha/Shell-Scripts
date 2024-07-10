#!/bin/bash
#Let's consider than the password is "Mypassword", 
#now we need to validate the password if it's given correctly by the user or not
#User will be given 3 login attempts, if user is not successfull in those 3 times, send output as, account locked 
#set -x
set -e
echo "Enter your password"

for i in 1 2 3
do
read var_password
if [ $var_password = "Mypassword" ]
then
	echo "Successfully logging in"
	break
else 
	echo "Incorrect password, enter again"
	#continue
fi
#alert to say Account locked
#echo $i
if [ $i -ge 3 ]
then
	echo " Login attempts failed, Account locked! "
fi

done
