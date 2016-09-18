#!/bin/bash
# hello-go unit-test.sh

export GOPATH=$PWD

set -e -x

go test -v -cover ./...

