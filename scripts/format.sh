#!/bin/bash
set -e # Exit immediately if a command exits with a non-zero status

# Get the target directory from the first argument
dir="$1"

# Find all .sql files in the specified directory and subdirectories
files=$(find "$dir" -name "*.sql")

# Count the total number of .sql files
total=$(echo "$files" | wc -l)
count=1 # Initialize a counter for file processing

echo "::group::Formatting SQL files"

# Iterate over each found file
echo "$files" | while read -r file; do
    # Check if the file name is not empty
    if [ -n "$file" ]; then
        # Display progress with current file and total count
        printf "[%d/%d]: %s\n" "$count" "$total" "$file"

        # Format the file using sql-formatter
        sql-formatter --fix "$file"

        # Increment the counter
        count=$((count + 1))
    fi
done

echo "::notice::All SQL files have been successfully formatted."

echo "::endgroup::"