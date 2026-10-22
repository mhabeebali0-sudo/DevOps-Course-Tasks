#!/bin/bash
#Date: 16-10-2026
#Description: Creating a simple calculator using bash scripting

echo "Enter first number:"
read num1

echo "Enter operator (+, -, *, /):"
read operator

echo "Enter second number:"
read num2

case "$operator" in
    +)
        echo "Result: $((num1 + num2))"
        ;;
    -)
        echo "Result: $((num1 - num2))"
        ;;
    \*)
        echo "Result: $((num1 * num2))"
        ;;
    /)
        if [ "$num2" -eq 0 ]
        then
            echo "Error: Division by zero is not allowed."
        else
            echo "Result: $((num1 / num2))"
        fi
        ;;
    *)
        echo "Invalid operator."
        exit 1
        ;;
esac
