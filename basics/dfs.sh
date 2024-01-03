#!/bin/bash


function dfs 
{
    local path=$1
    local file=$2
    local i=0
    local spaces=""
    while [ $i -lt $path ]
    do
        spaces="$spaces "
        i=`expr $i + 1`
    done
    echo "$spaces$file"
    if [ -d $file ]
    then
        cd $file
        for i in *
        do
            dfs `expr $path + 1` $i
        done
        cd ..
    fi
}

dfs 0 ../