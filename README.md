# hello-go

[![Code Climate](https://codeclimate.com/github/JeffDeCola/hello-go/badges/gpa.svg)](https://codeclimate.com/github/JeffDeCola/hello-go)
[![Issue Count](https://codeclimate.com/github/JeffDeCola/hello-go/badges/issue_count.svg)](https://codeclimate.com/github/JeffDeCola/hello-go/issues)
[![Go Report Card](https://goreportcard.com/badge/jeffdecola/hello-go)](https://goreportcard.com/report/jeffdecola/hello-go)
[![GoDoc](https://godoc.org/github.com/JeffDeCola/hello-go?status.svg)](https://godoc.org/github.com/JeffDeCola/hello-go)
[![License](http://img.shields.io/:license-mit-blue.svg)](http://jeffdecola.mit-license.org)

`hello-go` _uses Concourse to test, build, push (to DockerHub) and
deploy a long running "hello-world" Docker Image to Marathon._

[GitHub Webpage](https://jeffdecola.github.io/hello-go/),
[Docker Image](https://hub.docker.com/r/jeffdecola/hello-go)

## LONG-RUNNING APP FOR MARATHON

Written in go, every 3 seconds `hello-go` will print:

```bash
Hello everyone, count is: 1
Hello everyone, count is: 2
Hello everyone, count is: 3
...
```

`hello-go` shows how a simple "hello-world" program uses Concourse
to automate the creation and deployment of a Docker Image to Marathon.

The `hello-go` [Docker Image](https://hub.docker.com/r/jeffdecola/hello-go)
is useful in marathon and mesos testing where a simple long running app is needed.

## MARATHON .json FILE

[_`resource-marathon-deploy`_](https://github.com/JeffDeCola/resource-marathon-deploy)
uses a Marathon .json file (app.json) to deploys the newly created Docker Image
(APP) to Marathon.

## RUN

### Run Image from DockerHub

Run in interactive mode so you can `ctrl-c` to stop.

```bash
docker run -t -i jeffdecola/hello-go
```

### From the Command Line

```bash
go run main.go
```

## MANUALLY DEPLOY APP TO MARATHON

`hello-go` Docker Image can be manually deployed to Marathon by using the command:

```bash
curl -X PUT http://10.141.141.10:8080/v2/apps/yeah22 -d @app.json -H
"Content-type: application/json"
```

## TESTED, BUILT & PUSHED TO DOCKERHUB USING CONCOURSE

To automate the creation of the `hello-go` docker image, a concourse pipeline
will,

* Update github webpage.
* Unit test.
* Build the docker image.
* Push the docker image to DockerHub.

![IMAGE - hello-go concourse ci pipeline - IMAGE](docs/pics/hello-go-pipeline.jpg)

As seen in the pipeline diagram, the _resource-dump-to-dockerhub_ uses
the resource type
[docker-image](https://github.com/concourse/docker-image-resource)
to push a docker image to dockerhub.

[_`resource-marathon-deploy`_](https://github.com/JeffDeCola/resource-marathon-deploy)
deploys the newly created docker image to marathon.

`hello-go` also contains a few extra concourse resources:

* A resource (_resource-slack-alert_) uses a [docker image](https://hub.docker.com/r/cfcommunity/slack-notification-resource)
  that will notify slack on your progress.
* A resource (_resource-repo-status_) use a [docker image](https://hub.docker.com/r/dpb587/github-status-resource)
  that will update your git status for that particular commit.
* A resource ([_`resource-template`_](https://github.com/JeffDeCola/resource-template))
  that can be used as a starting point and template for creating other concourse
  ci resources.

For more information on using concourse for continuous integration,
refer to my cheat sheet on [concourse](https://github.com/JeffDeCola/my-cheat-sheets/tree/master/operations-tools/continuous-integration-continuous-deployment/concourse-cheat-sheet).
