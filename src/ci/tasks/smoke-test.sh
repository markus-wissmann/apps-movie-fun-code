#!/bin/bash

set -ex

if [ -z $MOVIE_FUN_URL ]; then
  echo "MOVIE_FUN_URL not set"
  exit 1
fi

pushd apps-movie-fun-code
  echo "Running smoke tests for Movie Fun App deployed at $MOVIE_FUN_URL"
  mvn test
popd

exit 0
