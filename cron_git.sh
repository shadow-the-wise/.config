#!/usr/bin/env bash

# Git message
MESSAGE="DOTFILES SCHEDULED MAINTENANCE"

# Set config directory
CONFIG="$HOME/.config/"

# Change to the config directory
cd $CONFIG

# Check git is installed first
git --version &>/dev/null

# Get the exit code of the last ran command
GIT_RESPONSE="$?"

# If exit code was successful run git commands
if [ $GIT_RESPONSE -eq 0 ]; then
    if output=$(git status --untracked-files=no --porcelain) && [ -z "$output" ]; then
        # Working directory clean
        echo "Working direcotry clean."
    else
        # Stages modifications and deletions, without new files
        git add -u
        # Commit changes
        git commit -m "${MESSAGE}"
        # push changes
        git push -u origin master
    fi
else
    echo "GIT is not currently installed on this system."
fi
