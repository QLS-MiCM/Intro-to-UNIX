#!/bin/bash

# Initialize variables
toyota_count=0
honda_count=0
ford_count=0
total_count=0

# Read the file line by line using a while loop
# IFS=$'\t' ensures that fields are correctly split by tabs
# IFS stands for Internal Field Separator. 
    # It is a special shell variable in Bash (and other UNIX-like shells) that determines how the shell recognizes word boundaries and splits input text into separate words or tokens. 
    # By default, IFS is set to whitespace characters: space, tab, and newline.
while IFS=$'\t' read -r car mpg cylinders displacement horsepower weight acceleration model origin; do
    # Skip the header line
    if [ "$car" == "Car" ]; then
        continue
    fi

    # Extract manufacturer from the car name
    manufacturer=$(echo "$car" | awk '{print $1}')

    # Increment the total count
    total_count=$((total_count + 1))

    # Check the manufacturer and update the corresponding count
    if [ "$manufacturer" == "Toyota" ]; then
        toyota_count=$((toyota_count + 1))
    elif [ "$manufacturer" == "Honda" ]; then
        honda_count=$((honda_count + 1))
    elif [ "$manufacturer" == "Ford" ]; then
        ford_count=$((ford_count + 1))
    fi
done < ./cars.tsv

# Calculate percentages using bc for floating-point arithmetic
if [ $total_count -gt 0 ]; then
    toyota_percentage=$((100 * toyota_count / total_count))
    honda_percentage=$((100 * honda_count / total_count))
    ford_percentage=$((100 * ford_count / total_count))
else
    toyota_percentage=0
    honda_percentage=0
    ford_percentage=0
fi

# Print results
echo "Total cars: $total_count"
echo "Toyota cars: $toyota_count ($toyota_percentage%)"
echo "Honda cars: $honda_count ($honda_percentage%)"
echo "Ford cars: $ford_count ($ford_percentage%)"
