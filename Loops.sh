#!/bin/bash

echo "Pattern 1: "
echo

for((i=1;i<=5;i++))
do
    for((j=i;j<=5;j++))
    do
        echo -ne " "
    done
    for((j=1;j<=i;j++))
    do
        echo -ne "#"
    done
    echo 
done

echo "Pattern 2: "
echo

for((i=1;i<=7;i++))
do
    for((j=i;j<=7;j++))
    do
        echo -ne " "
    done
    for((j=1;j<=i;j++))
    do
        echo -ne "#"
    done
    for((j=(i-1);j>=1;j--))
    do
        echo -ne "#"
    done
    echo 
done
