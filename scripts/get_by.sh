#! /bin/bash

## Gets "by" with a little help from its friends
status=`cmus-remote -Q | grep 'status' | cut -c 8-` 
if [[ $status == *"paused"* ]]; then
    echo "by"
elif [[ $status == *"playing"* ]]; then
     echo "by"
else 
     echo "" 
fi

