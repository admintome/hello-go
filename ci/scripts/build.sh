#!/bin/bash

set -e -x

pushd hello-go
  go build -o dist/hello-go .  
  cp Dockerfile dist/Dockerfile
popd

