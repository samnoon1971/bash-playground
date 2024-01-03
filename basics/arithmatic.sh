#!/bin/bash

function isPrime
{
    local number=$1
    local i=2
    while [ $i -lt $number ]
    do
        if [ `expr $number % $i` -eq 0 ]
        then
            echo "$number is not a prime number"
            echo "Since it is divisible by $i"
            return
        fi
        i=`expr $i + 1`
    done
    echo "$number is a prime number"
}

function isPrimeSeive 
{
    local number=$1
    local i=2
    local j=2
    local flag=0
    while [ $i -le $number ]
    do
        j=2
        flag=0
        while [ $j -lt $i ]
        do
            if [ `expr $i % $j` -eq 0 ]
            then
                flag=1
                break
            fi
            j=`expr $j + 1`
        done
        if [ $flag -eq 0 ]
        then
            echo "$i is a prime number"
        fi
        i=`expr $i + 1`
    done
}

function isPrimeSeiveOptimized
{
    local number=$1
    local i=2
    local j=2
    local flag=0
    while [ $i -le $number ]
    do
        j=2
        flag=0
        while [ $j -lt $i ]
        do
            if [ `expr $i % $j` -eq 0 ]
            then
                flag=1
                break
            fi
            j=`expr $j + 1`
        done
        if [ $flag -eq 0 ]
        then
            echo "$i is a prime number"
        fi
        i=`expr $i + 1`
    done
}   

function isCoPrime 
{
    local number1=$1
    local number2=$2
    local i=2
    local gcd=1
    while [ $i -le $number1 -a $i -le $number2 ]
    do
        if [ `expr $number1 % $i` -eq 0 -a `expr $number2 % $i` -eq 0 ]
        then
            gcd=$i
        fi
        i=`expr $i + 1`
    done
    if [ $gcd -eq 1 ]
    then
        echo "$number1 and $number2 are co-prime"
    else
        echo "$number1 and $number2 are not co-prime"
    fi
}

function factorial 
{
    local number=$1
    local i=1
    local fact=1
    while [ $i -le $number ]
    do
        fact=`expr $fact \* $i`
        i=`expr $i + 1`
    done
    echo "Factorial of $number is $fact"
}

function factorialDP 
{
    local number=$1
    local i=1
    local fact=1
    local factArray=()
    factArray[0]=1
    while [ $i -le $number ]
    do
        fact=`expr $fact \* $i`
        factArray[$i]=$fact
        i=`expr $i + 1`
    done
    echo "Factorial of $number is ${factArray[$number]}"
}   


isPrime 3
isPrimeSeive 2
isPrimeSeiveOptimized 20
isCoPrime 5 7
isCoPrime 5 15
factorial 5
factorialDP 7


