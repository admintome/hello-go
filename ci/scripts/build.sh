#!/bin/bash

set -e -x

go build -o dist/hello-go ./hello-go  
cp hello-go/ci/Dockerfile dist/Dockerfile
