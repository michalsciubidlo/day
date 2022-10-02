#!/bin/bash

DIR="${HOME}/Documents/daily/";
DAY="$(date +'%F')"

if [ ! -z "$1" ]
  # open X file from X days ago 
  then
    days=$1
    re='^[0-9]+$'
    if ! [[ $days =~ $re ]] ; then
      echo "error: $days is not a positive integer" >&2; exit 1
    fi
    DAY=$(date --date="$days days ago" +'%F')
fi


FILE="${DIR}${DAY}"

vim "$FILE";
