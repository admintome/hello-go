# hello-go

[![Code Climate](https://codeclimate.com/github/JeffDeCola/hello-go/badges/gpa.svg)](https://codeclimate.com/github/JeffDeCola/hello-go)
[![Issue Count](https://codeclimate.com/github/JeffDeCola/hello-go/badges/issue_count.svg)](https://codeclimate.com/github/JeffDeCola/hello-go)
[![License](http://img.shields.io/:license-mit-blue.svg)](http://jeffdecola.mit-license.org)
[![Go Report Card](https://goreportcard.com/badge/jeffdecola/hello-go)](https://goreportcard.com/report/jeffdecola/hello-go)
[![GoDoc](https://godoc.org/github.com/JeffDeCola/hello-go?status.svg)](https://godoc.org/github.com/JeffDeCola/hello-go)

`hello-go` will create and push a simple dockerhub image (that continously loops every 3 seconds) to dockerhub.

The docker image is useful in marathon and mesos testing because I needed a long running app.

To automate the creation of the docker image, a concourse ci pipeline is implemented to unit test, build and push the docker image to dockerhub.  Furthermore, 'hello-go' contains a concournse ci [`resource-template`](https://github.com/JeffDeCola/resource-template) that can be used as a starting point for creating a concourse ci resource.
