# hello-go

[![Code Climate](https://codeclimate.com/github/JeffDeCola/hello-go/badges/gpa.svg)](https://codeclimate.com/github/JeffDeCola/hello-go)
[![Issue Count](https://codeclimate.com/github/JeffDeCola/hello-go/badges/issue_count.svg)](https://codeclimate.com/github/JeffDeCola/hello-go/issues)
[![Go Report Card](https://goreportcard.com/badge/jeffdecola/hello-go)](https://goreportcard.com/report/jeffdecola/hello-go)
[![GoDoc](https://godoc.org/github.com/JeffDeCola/hello-go?status.svg)](https://godoc.org/github.com/JeffDeCola/hello-go)
[![License](http://img.shields.io/:license-mit-blue.svg)](http://jeffdecola.mit-license.org)

`hello-go` _uses concourse ci to create and push a long running "hello-world"
docker image to dockerhub._

Written in go, every 3 seconds `hello-go` will print:

```bash
Hello everyone, count is: 1
Hello everyone, count is: 2
Hello everyone, count is: 3
...
```

`hello-go` is useful to show how to use concourse ci to automate the creation of a
docker image.

The `hello-go` [docker image](https://hub.docker.com/r/jeffdecola/hello-go) is useful in
marathon and mesos testing where a long running app is needed.

## RUN

### Run image from dockerhub

```bash
docker run jeffdeCola/hello-go
```

### From the command line

```bash
go run main.go
```

## BUILT USING CONCOURSE CI

To automate the creation of the `hello-go` docker image, a concourse ci pipeline
will unit test, build and push the docker image to dockerhub.

![IMAGE - hello-go concourse ci piepline - IMAGE](docs/hello-go-pipeline.jpg)

A _ci/.credentials.yml_ file needs to be created for your _slack_url_, _repo_github_token_,
and _dockerhub_password_.

Use fly to upload the the pipeline file _ci/pipline.yml_ to concourse:

```bash
fly -t ci set-pipeline -p hello-go -c ci/pipeline.yml --load-vars-from ci/.credentials.yml
```

## CONCOURSE RESOURCES IN PIPELINE

As seen in the pipeline diagram, the _resource-dump-to-dockerhub_ uses the resource type
[docker-image](https://github.com/concourse/docker-image-resource)
to push a docker image to dockerhub.

`hello-go` also contains a few extra concourse resources:

* A resource (_resource-slack-alert_) that will notify slack on your progress.
* A resource (_resource-repo-status_) that will update your git status for that
  particular commit.
* A resource ([_`resource-template`_](https://github.com/JeffDeCola/resource-template))
  that can be used as a starting point and template for creating other concourse
  ci resources.

These resources can be easily removed from the pipeline.
