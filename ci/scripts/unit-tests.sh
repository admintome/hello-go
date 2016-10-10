#!/bin/bash
# hello-go unit-test.sh

set -e -x

# FOR GITHUB WEBPAGES
# BASICALLY COPY README.md to /docs/_includes/README.md
# Remove everything before the second hedading.
sed '0,/GitHub Webpage/d' hello-go/README.md > hello-go/docs/_includes/README.md

# The code is located in /hello-go
echo "pwd is: " $PWD
echo "List whats in the current directory"
ls -lat 

# Setup the gopath based on current directory.
export GOPATH=$PWD

# Now we must move our code from the current directory ./hello-go to $GOPATH/src/github.com/JeffDeCola/hello-go
mkdir -p src/github.com/JeffDeCola/
cp -R ./hello-go src/github.com/JeffDeCola/.

# All set and everything is in the right place for go
echo "Gopath is: " $GOPATH
echo "pwd is: " $PWD
cd src/github.com/JeffDeCola/hello-go
ls -lat

# RUN unit_tests and it shows the percentage coverage
# print to stdout and file using tee
go test -cover ./... | tee test_coverage.txt
# add some whitespace to the begining of each line
sed -i -e 's/^/     /' test_coverage.txt

# Move to coverage-results directory.
mv test_coverage.txt $GOPATH/coverage-results/.


