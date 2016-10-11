#!/bin/bash
# hello-go readme-github-pages.sh

set -e -x

# The code is located in /hello-go
echo "pwd is: " $PWD
echo "List whats in the current directory"
ls -lat 

# Note: hello-go-updated already created becasue of yml file
git clone hello-go hello-go-updated

cd hello-go-updated
ls -lat 

# FOR GITHUB WEBPAGES
# BASICALLY COPY README.md to /docs/_includes/README.md
# Remove everything before the second hedading.
sed '0,/GitHub Webpage/d' README.md > docs/_includes/README.md
# update the image links (remove docs/)
sed -i 's#IMAGE](docs/#IMAGE](#g' docs/_includes/README.md

# CHECK IF THEERE IS A DIFF, IF THERE IS COMMIT, IF NOT DON'T
# Returns 0 is same, 1 if diff
cmp
echo "start"
cmp README.md docs/_includes/README.md > diff.txt 2>&1
echo $?
if echo $?
then
    echo "README.md and docs/_includes/README.md differ"
    #ADD AND COMMIT
    git config --global user.email "jeff@keeperlabs.com"
    git config --global user.name "Jeff DeCola (concourse)"

    git status
    # ONLY add what is needed to protect from unforseen issues.
    git add docs/_includes/README.md
    git commit -m "cp README.md docs/_includes/README.md for GitHub Page"
    git status
fi
echo "complete"
echo $?