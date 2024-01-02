#!/bin/bash

function welcome_info 
{
echo "Hello World!"
echo "Today is " `date`
}

function system_info
{
    echo "System Information:"
    echo `uname -a`
    return
}


welcome_info
system_info
