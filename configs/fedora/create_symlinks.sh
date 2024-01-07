#!/bin/bash

DRY_RUN=false
if [ "$1" == "--dry-run" ]; then
    DRY_RUN=true
    echo "Running in dry run mode. No changes will be made."
fi

# Define the path to your actual .config directory and the repository .config directory
ACTUAL_CONFIG_DIR="$HOME/.config"
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
REPO_CONFIG_DIR="$SCRIPT_DIR/.config"

# Loop through the directories in your repository's .config directory
for dir in "$REPO_CONFIG_DIR"/*; do
    if [ -d "$dir" ]; then
        dirname=$(basename "$dir")
        targetpath="$ACTUAL_CONFIG_DIR/$dirname"
        
        echo "Checking if need to make backup of $targetpath"
        
        # Backup config target
        if [ -d "$targetpath" ] && [ ! -L "$targetpath" ]; then
            echo "Making backup of $targetpath"
            if [ "$DRY_RUN" = false ] && [ ! -d "$targetpath-backup" ]; then
              mv "$targetpath" "$targetpath-backup"
            fi
        fi

        # Create a symbolic link for the directory in the actual .config directory
        echo "Creating symlink for $targetpath"
        if [ "$DRY_RUN" = false ] && [ ! -L "$targetpath" -o "$(readlink -f "$targetpath")" != "$(readlink -f "$dir")" ]; then
          ln -sfn "$dir" "$targetpath"
        fi
    fi
done

DOTFILES_DIR="$SCRIPT_DIR/HOME"

# Loop through the .dotfiles in the specified directory
for dotfile in "$DOTFILES_DIR"/*.dotfile; do
    if [ -f "$dotfile" ]; then

        filename=".$(basename "$dotfile" .dotfile)"
        echo "Checking if need to make backup of $filename"

        if [ -f "$HOME/$filename" ] && [ ! -L "$HOME/$filename" ]; then
            echo "Making backup of $filename"
            if [ "$DRY_RUN" = false ] && [ ! -f "$HOME/$filename-backup" ]; then
              mv "$HOME/$filename" "$HOME/$filename-backup"
            fi
        fi

        echo "Making symlink of $filename"
        if [ "$DRY_RUN" = false ] && [ ! -L "$HOME/$filename" -o "$(readlink -f "$HOME/$filename")" != "$(readlink -f "$dotfile")" ]; then
          ln -sfn "$dotfile" "$HOME/$filename"
        fi
    fi
done
