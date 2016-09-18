#!/bin/bash
# hello-go build.sh

set -e -x

# Everyting should already be set up.

echo "Gopath is: " $GOPATH
echo "pwd is: " $PWD

# Setup the gopath to were ./hello-go is. 
#export GOPATH=$PWD

# Now we must move our code from the current directory ./hello-go to $GOPATH/src/github.com/JeffDeCola/hello-go
#mkdir -p src/github.com/JeffDeCola/
#cp -R ./hello-go src/github.com/JeffDeCola/.

# All set with everything in the right place
#cd github.com/JeffDeCola/hello-go

go build -o dist/hello-go ./main.go

cp hello-go/ci/Dockerfile dist/Dockerfile
