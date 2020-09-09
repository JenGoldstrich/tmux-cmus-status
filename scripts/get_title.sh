#! /bin/bash

title=`cmus-remote -Q | grep 'tag title' | cut -c 11-`

echo $title
