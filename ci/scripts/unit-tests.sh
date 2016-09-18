#!/bin/bash
# hello-go unit-test.sh

set -e -x

# Setup the gopath to were ./hello-go is. 
export GOPATH=$PWD
echo "List whats in the current directory"
ls -lat 

# Now we must move our code from the current directory ./hello-go to $GOPATH/src/github.com/JeffDeCola/hello-go
mkdir -p src/github.com/JeffDeCola/
cp -R ./hello-go src/github.com/JeffDeCola/.

# All set with everything in the right place
echo "Gopath is: " $GOPATH
echo "pwd is: " $PWD
cd src/github.com/JeffDeCola/hello-go

# RUN unit_tests
go test -v -cover ./...


