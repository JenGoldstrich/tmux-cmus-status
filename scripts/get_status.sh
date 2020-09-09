#! /bin/bash

status=`cmus-remote -Q | grep 'status' | cut -c 8-` 
if [[ $status == *"paused"* ]]; then
    echo paused
    exit 0
elif [[ $status == *"playing"* ]]; then
     echo playing
     exit 0
else 
    exit 1
fi

