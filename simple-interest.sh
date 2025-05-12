#!/bin/bash

# simple-interest.sh
# A script to calculate simple interest based on user input

# Display purpose of the script
echo "Simple Interest Calculator"
echo "Formula: SI = (Principal * Rate * Time) / 100"
echo "-----------------------------------------"

# Prompt user for input
read -p "Enter the Principal amount: " principal
read -p "Enter the Rate of interest (in %): " rate
read -p "Enter the Time period (in years): " time

# Validate inputs (check if they are numbers)
if ! [[ "$principal" =~ ^[0-9]+(\.[0-9]+)?$ && "$rate" =~ ^[0-9]+(\.[0-9]+)?$ && "$time" =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
    echo "Error: Please enter valid numeric values."
    exit 1
fi

# Calculate simple interest
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Display the result
echo "-----------------------------------------"
echo "Principal: $principal"
echo "Rate: $rate%"
echo "Time: $time years"
echo "Simple Interest: $simple_interest"
