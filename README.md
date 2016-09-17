# hello-go

[![Code Climate](https://codeclimate.com/github/JeffDeCola/hello-go/badges/gpa.svg)](https://codeclimate.com/github/JeffDeCola/hello-go)
[![Issue Count](https://codeclimate.com/github/JeffDeCola/hello-go/badges/issue_count.svg)](https://codeclimate.com/github/JeffDeCola/hello-go/issues)
[![Go Report Card](https://goreportcard.com/badge/jeffdecola/hello-go)](https://goreportcard.com/report/jeffdecola/hello-go)
[![GoDoc](https://godoc.org/github.com/JeffDeCola/hello-go?status.svg)](https://godoc.org/github.com/JeffDeCola/hello-go)
[![License](http://img.shields.io/:license-mit-blue.svg)](http://jeffdecola.mit-license.org)

`hello-go` _uses concourse ci to create and push a long running "hello-world"
docker image to dockerhub._

Written in go, every 3 seconds it will print:

```bash
Hello everyone, count is: 1
Hello everyone, count is: 2
Hello everyone, count is: 3
...
```

The docker image is useful in marathon and mesos testing where a long running
app is needed.

## RUNNING FROM DOCKERHUB

```bash
docker run jeffdeCola/hello-go
```

## COUNCOURSE CI

To automate the creation of the docker image, a concourse ci pipeline will unit test,
build and push the docker image to dockerhub.

![IMAGE - hello-go concourse ci piepline - IMAGE](docs/hello-go-pipeline.jpg)

## OTHER RESOURCES IN PIPELINE

`hello-go` also contains a few extra concourse resources in the pipeline:

* A resource that will notify slack on your progress.
* A resource that will update your git status.
* A resource [`resource-template`](https://github.com/JeffDeCola/resource-template)
  that can be used as a starting point/template for creating other concourse
  ci resources.

These resources can be easily removed from the pipeline.
