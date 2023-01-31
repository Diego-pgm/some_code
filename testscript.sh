#!/bin/sh
git config --global user.name "Diego"
git config --global user.email "diego@lin.com"
echo "this script is from github"
NUMBER=$(($NUMBERONE + $NUMBERTWO))
DATE=$(date)
echo "$DATE Result is: $NUMBER" >> result.txt


