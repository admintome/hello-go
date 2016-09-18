#!/bin/bash
# hello-go build.sh

set -e -x

#The code is located in /hello-go
echo "List whats in the current directory"
ls -lat 

# Enter the directory
cd hello-go

# put the binary hello-go filename in /dist
go build -o dist/hello-go ./main.go

# cp the Dockerfile into /dist
cp ci/Dockerfile dist/Dockerfile

# Check
echo "List whats in the /dist directory"
ls -lat dist
