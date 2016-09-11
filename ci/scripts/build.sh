#!/bin/bash

set -e -x

pushd hello-go
  go build -o bin/hello-go .  
popd

