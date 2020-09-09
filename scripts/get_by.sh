#! /bin/bash

status=`cmus-remote -Q | grep 'status' | cut -c 8-` 
if [[ $status == *"paused"* ]]; then
    echo "by"
elif [[ $status == *"playing"* ]]; then
     echo "by"
else 
     echo "" 
fi

