#!/bin/bash

# Check if an argument was provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <directory_path>"
    exit 1
fi

# Path to the directory that contains the files
directory_path="$1"

# Check if directory path ends with a slash, if not, append one
[[ "$directory_path" != */ ]] && directory_path="$directory_path/"

# For each file in the directory
for filename in "$directory_path"*; do
  # Get the base name of the file
  basename=$(basename "$filename")

  # Get the language part of the filename
  language=${basename%-*}

  # If the directory does not exist, create it
  if [ ! -d "$directory_path$language" ]; then
    mkdir "$directory_path$language"
  fi

  # Move the file to the corresponding directory
  mv "$filename" "$directory_path$language/"
done
