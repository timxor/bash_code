#!/bin/bash

# Fetch all branches
git fetch --all

# Store the current branch to return to it later
current_branch=$(git branch --show-current)

# Loop through each remote branch
for branch in $(git branch -r | grep -v '\->' | sed 's/origin\///'); do
    echo "Processing branch: $branch"

    # Create a directory with the name of the branch
    mkdir -p "../$branch"
    if [ $? -ne 0 ]; then
        echo "Failed to create directory for branch: $branch"
        continue
    fi

    # Checkout the branch into the new directory
    git --work-tree="../$branch" --git-dir=".git" checkout -f $branch -- .
    if [ $? -ne 0 ]; then
        echo "Failed to checkout branch: $branch"
        continue
    fi
done

# Checkout back to the original branch
git checkout $current_branch
