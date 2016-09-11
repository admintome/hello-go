#!/bin/bash

set -e -x

go build -o dist/hello-go ./hello-go  
cp Dockerfile dist/Dockerfile
