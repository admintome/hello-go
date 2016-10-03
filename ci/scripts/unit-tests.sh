#!/bin/bash
# hello-go unit-test.sh

set -e -x

# The code is located in /hello-go
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

# RUN unit_tests and it shows the percentage coverage
# print to stdout and file using tee
go test -v -cover ./... | tee test_cover.log

echo "Gopath is: " $GOPATH
echo "pwd is: " $PWD
echo "List whats in the current directory"
ls -lat
echo "test_cover.log is: "
cat test_cover.log

