#!/bin/bash

# Get the commit message from the user
echo "Enter commit message:"
read message

# Add all changes to the staging area
git add .

# Commit the changes with the user-provided message
git commit -m "$message"

# Push the changes to the remote repository
git push origin master

echo "Done!"