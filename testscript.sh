#!/bin/sh
#git config --global user.name "Diego"
#git config --global user.email "diego@lin.com"
echo "this script is from github"
NUMBER=$(($NUMBERONE + $NUMBERTWO))
DATE=$(date)
echo "$DATE Result is: $NUMBER" >> result.txt
files=( "./result.txt" "otherfile.txt" )
for file in "${files[@]}"
do
  cat file.txt
  if [[ $? -ne 0 ]]
  then
    echo "file not found"
    break
done

