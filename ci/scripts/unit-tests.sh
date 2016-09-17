#!/bin/bash
# hello-go unit-test.sh

set -e -x

go test -v -cover ./...

