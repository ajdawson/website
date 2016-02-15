#!/bin/bash

set -o errexit -o nounset

if [[ "$TRAVIS_BRANCH" != "master" ]]; then
    echo "Deployment is only possible from the master branch, exiting."
    exit 0
fi

mkdir ../ajdawson.github.io
hyde gen -c production.yaml
hyde publish -c production.yaml -p github
