#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ALIAS=${1:-transfodev}
PIPELINE_NAME=${2:-dotnet-nodejs-docker}

fly -t "${ALIAS}" sp -p "${PIPELINE_NAME}" -c $DIR/pipeline.yml --non-interactive 

