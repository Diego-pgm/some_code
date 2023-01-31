#!/bin/sh
echo "this script is from github"
NUMBER=$(($NUMBERONE + $NUMBERTWO))
echo "$NUMBER" >> result.txt
git config --global user.name "Diego"
git config --global user.email "diego@lin.com"
