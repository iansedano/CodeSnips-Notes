#!/bin/sh
# Script by Eli Delventhal
# Creates Git projects for file folders by making the origin Dropbox. You will need to install Dropbox for this to work.

# Not enough parameters, show help.
if [ $# -lt 1 ] ; then

cat<<HELP
projects_to_git.sh -- Takes a project folder and creates a Git repository for it on Dropbox

USAGE:
    ./projects_to_git.sh file1 file2 ..

EXAMPLES:
    ./projects_to_git.sh path/to/MyProjectDir
        Creates a git project called MyProjectDir on Dropbox

    ./projects_to_git.sh path/to/workspace/*
        Creates a git project on Dropbox for every folder contained within the workspace directory, where the project name matches the folder name

HELP
    exit 0
fi

# We have enough parameters, so let's actually do this thing.

START_DIR=$(pwd)

# Make sure we have a connection to Dropbox
cd ~
if [ -s 'Dropbox' ] ; then
    echo "Found Dropbox directory."
    cd Dropbox
    if [ -s 'git' ] ; then
        echo "    Dropbox Git directory found."
    else
        echo "    Dropbox Git directory created."
        mkdir git
    fi
else
    echo "You do not have a Dropbox folder at ~/Dropbox! Install Dropbox. Aborting..."
    exit 0
fi

# Process all directories matching the passed parameters.
echo "Starting processing for all files..."
for PROJ in $*
do
    if [ -d $PROJ ] ; then
        PROJNAME=$(basename $PROJ)
        echo "  Processing $PROJNAME..."

        # Enable Git with this project.
        cd $PROJ
        if [ -s '.git' ] ; then
            echo "    $PROJNAME is already a Git repository, ignoring..."
        else
            echo "    Initializing Git for $PROJNAME..."
            git init -q
            git add .
            git commit -m "Initial creation of project." -q

            # Make the origin Dropbox.

            cd ~/Dropbox/git
            if [ -s $PROJNAME ] ; then
                echo "    Warning! $PROJNAME already exists in Git! Ignoring..."
            else
                echo "    Putting $PROJNAME project on Dropbox..."
                mkdir $PROJNAME
                cd $PROJNAME
                git init -q --bare
            fi

            # Link the project to the origin
            echo "    Copying local $PROJNAME to Dropbox..."
            cd $PROJ
            git remote add origin "~/Dropbox/git/$PROJNAME"
            git push -q origin master
            git branch --set-upstream master origin/master
        fi
    fi
done

echo "Done processing all files."
cd $START_DIR