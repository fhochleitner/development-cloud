#!/bin/bash

readonly DOCKER_TEMPLATE_HOME=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# docker-template
function docker-template () {
  local command="docker run --rm -it gepardec/hello-world"
  echo "+ ${command} $@" && ${command} $@
}
readonly -f docker-template
[ "$?" -eq "0" ] || return $?

# docker-template-build
function docker-template-build () {
  local command="docker build -t gepardec/hello-world $@ ${DOCKER_TEMPLATE_HOME}"
  echo "+ ${command}" && ${command}
}
readonly -f docker-template-build
[ "$?" -eq "0" ] || return $?