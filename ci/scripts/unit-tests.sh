#!/bin/bash
# hello-go unit-test.sh

set -e -x

# Setup the gopath to were ./hello-go is. 
export GOPATH=$PWD

# Now we must move our code from the current directory ./hello-go to $GOPATH/src/github.com/JeffDeCola/hello-go
mkdir -p src/github.com/JeffDeCola/
cp -R ./hello-go src/github.com/JeffDeCola/.

# All set with everything in the right place
cd github.com/JeffDeCola/hello-go
echo "Gopath is: " $GOPATH
echo "pwd is: " $PWD

$ RUN unit_tests
go test -v -cover ./...


