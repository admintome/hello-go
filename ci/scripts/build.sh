#!/bin/bash

set -e -x

pushd hello-go
  cp Dockerfile dist/Dockerfile
  go build -o dist/hello-go .  
popd

