#!/bin/bash

source bashrc

set -e
docker-template-build --no-cache
docker-template
set +e