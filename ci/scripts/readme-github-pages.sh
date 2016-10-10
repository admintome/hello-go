#!/bin/bash
# hello-go readme-github-pages.sh

set -e -x

# The code is located in /hello-go
echo "pwd is: " $PWD
echo "List whats in the current directory"
ls -lat 

cp -r hello-go hello-go-updated

cd hello-go-updated

# FOR GITHUB WEBPAGES
# BASICALLY COPY README.md to /docs/_includes/README.md
# Remove everything before the second hedading.
sed '0,/GitHub Webpage/d' README.md > docs/_includes/README.md

#ADD AND COMMIT
git config --global user.email "jeff@kepperlabs.com"
git config --global user.name "Jeff DeCola"

git add .
git commit -m "COPY README.md to /docs/_includes/README.md"
