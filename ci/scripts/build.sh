#!/bin/bash
# hello-go build.sh

set -e -x

# Everyting should already be set up. Meaning I have a $GOPATH/src/github.com/JeffDeCola/hello-go
# Check that

# Setup the gopath to were ./hello-go is. 
export GOPATH=$PWD

# Now we must move our code from the current directory ./hello-go to $GOPATH/src/github.com/JeffDeCola/hello-go
# mkdir -p src/github.com/JeffDeCola/
# cp -R ./hello-go src/github.com/JeffDeCola/.

# All set with everything in the right place
echo "Gopath is: " $GOPATH
echo "pwd is: " $PWD
cd src/github.com/JeffDeCola/hello-go

# put the binary in /dist
go build -o dist/hello-go ./main.go

# cp the Dockerfile into /dist
cp hello-go/ci/Dockerfile dist/Dockerfile
