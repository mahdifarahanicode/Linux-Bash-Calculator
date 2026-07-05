#!/bin/bash

clear

echo "=========================="
echo "   Simple Bash Calculator"
echo "=========================="

echo

read -p "Enter first number: " num1
read -p "Enter second number: " num2

echo
echo "Choose operation:"
echo "1) Addition"
echo "2) Subtraction"
echo "3) Multiplication"
echo "4) Division"

read -p "Selection: " choice

echo

case $choice in

1)
    result=$((num1 + num2))
    echo "$num1 + $num2 = $result"
    ;;

2)
    result=$((num1 - num2))
    echo "$num1 - $num2 = $result"
    ;;

3)
    result=$((num1 * num2))
    echo "$num1 × $num2 = $result"
    ;;

4)

    if [ "$num2" -eq 0 ]; then
        echo "Error: Division by zero!"
    else
        result=$(echo "scale=2; $num1/$num2" | bc)
        echo "$num1 / $num2 = $result"
    fi
    ;;

*)

    echo "Invalid choice."

    ;;

esac
