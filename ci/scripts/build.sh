#!/bin/bash
#build.sh

set -e -x

go build -o dist/hello-go ./main.go

cp hello-go/ci/Dockerfile dist/Dockerfile
