#!/bin/bash

set -o errexit -o nounset

if [[ "$TRAVIS_BRANCH" != "master" ]]; then
    echo "Deployment is only possible from the master branch, exiting."
    exit 0
fi

git config --global user.name "$GIT_USER"
git config --global user.email "$GIT_EMAIL"
git clone https://${GH_TOKEN}@${GH_REF} ../ajdawson.github.io
hyde gen -c production.yaml
hyde publish -c production.yaml -p github
