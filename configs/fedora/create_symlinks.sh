#!/bin/bash

# Define the path to your actual .config directory and the repository .config directory
ACTUAL_CONFIG_DIR="$HOME/.config"
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
REPO_CONFIG_DIR="$SCRIPT_DIR/.config"

echo $SCRIPT_DIR
echo $REPO_CONFIG_DIR
# Loop through the directories in your repository's .config directory
for dir in "$REPO_CONFIG_DIR"/*; do
    if [ -d "$dir" ]; then
        # Extract just the directory name
        dirname=$(basename "$dir")
        echo $dirname

        # Create a corresponding directory in the actual .config directory if it doesn't exist
        # mkdir -p "$ACTUAL_CONFIG_DIR/$dirname"

        # Loop through the files in the repository directory
        # for file in "$dir"/*; do
        #     if [ -f "$file" ]; then
        #         # Extract just the filename
        #         filename=$(basename "$file")

        #         # Create a symbolic link in the actual .config directory
        #         ln -sfn "$file" "$ACTUAL_CONFIG_DIR/$dirname/$filename"
        #     fi
        # done
    fi
done
