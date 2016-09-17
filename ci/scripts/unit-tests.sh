#!/bin/bash
#unit-test.sh

set -e -x

go test -v -cover ./...

