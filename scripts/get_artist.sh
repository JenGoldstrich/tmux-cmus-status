#! /bin/bash

artist=`cmus-remote -Q | grep 'tag artist' | cut -c 12-`

echo $artist
