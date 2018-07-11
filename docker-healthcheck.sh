#!/usr/bin/env bash

set -x

healthcheck_server() {
  curl --fail http://0.0.0.0:8081 \
    || exit 1
}

healthcheck_server
