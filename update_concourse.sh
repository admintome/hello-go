#!/bin/bash
# hello-go update_concourse.sh

fly -t ci set-pipeline -p hello-go -c ci/pipeline.yml --load-vars-from ../.credentials.yml
