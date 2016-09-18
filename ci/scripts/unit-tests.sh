#!/bin/bash
# hello-go unit-test.sh

set -e -x

export GOPATH=$PWD
mkdir -p src/github.com/JeffDeCola/
cp -R ./hello-go src/github.com/JeffDeCola/.

go test -v -cover github.com/JeffDeCola/hello-go/...


