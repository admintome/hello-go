#!/bin/bash
# hello-go build.sh

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

# Put the binary hello-go filename in /dist
go build -o dist/hello-go ./main.go

# cp the Dockerfile into /dist
cp ci/Dockerfile dist/Dockerfile

# Check
echo "List whats in the /dist directory"
ls -lat dist

# Move to $GOPATH
cp -R ./dist $GOPATH/.
cd $GOPATH
# Check
echo "List whats in the /dist directory"
ls -lat dist