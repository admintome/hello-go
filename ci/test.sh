#!/bin/bash

set -e -x

pushd hello-go
  go test -coverprofile=coverage.out 
popd

