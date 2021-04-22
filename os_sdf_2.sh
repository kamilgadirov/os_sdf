#!/bin/bash

read dir

if [ -d $dir ];
then
    printf "%s exists\n" $dir
else
    printf "%s" "directory is missing"
fi
