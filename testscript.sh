#!/bin/sh
echo "this script is from github"
NUMBER=$(($NUMBERONE + $NUMBERTWO))
DATE=$(date)
echo "$DATE Result is: $NUMBER" >> result.txt
for file in "result.txt" "other.txt"
do
  cat $file
  if [[ $? -ne 0 ]]
  then
    echo "file not found"
    break
  fi
done

