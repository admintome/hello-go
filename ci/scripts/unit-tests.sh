#!/bin/bash
# hello-go unit-test.sh

set -e -x

# Setup the gopath and directory structure
export GOPATH=$PWD
echo "The $PWD and $GOPATH IS is: " $PWD
tree

mkdir -p src/github.com/JeffDeCola/
cp -R ./hello-go src/github.com/JeffDeCola/.

go test -v -cover github.com/JeffDeCola/hello-go/...


