#!/bin/bash
# hello-go readme-github-pages.sh

set -e -x

# The code is located in /hello-go
echo "pwd is: " $PWD
echo "List whats in the current directory"
ls -lat 

# FOR GITHUB WEBPAGES
# BASICALLY COPY README.md to /docs/_includes/README.md
# Remove everything before the second hedading.
sed '0,/GitHub Webpage/d' hello-go/README.md > hello-go/docs/_includes/README.md
cd hello-go

git add .
git commit -m "COPY README.md to /docs/_includes/README.md"
