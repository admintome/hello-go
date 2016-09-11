#!/bin/bash

set -e -x

pushd hello-go
  go test -v -cover
popd

