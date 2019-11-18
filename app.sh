#!/usr/bin/env bash

# Wrap all of the functions for the projects into this
# TODO: update this

COMMAND=$1

function help_show() {
  echo "Usage: `app.sh $0` h"
  echo
  echo "   -b, --build                Maven build "
  echo "   -t, --test                 Maven tests "
  echo "   -r, --run                  Java run "
  echo "   -dkb, --docker-build       Docker build image "
  echo "   -dkr, --docker-run         Docker run image "
  echo "   -dkc, --docker-complete    Docker build&run image "
  echo "   -h, --help                 Display available options "
  echo
  exit 1;
}

if [[ -z ${COMMAND} || ${COMMAND}= "-h" || ${COMMAND} == "--help" ]]; then
  help_show
elif [[ ${COMMAND}= "-b" || ${COMMAND} == "--build" ]]; then
  ./mvnw clean package
elif [[ ${COMMAND}= "-t" || ${COMMAND} == "--test" ]]; then
  ./mvnw test
elif [[ ${COMMAND}= "-r" || ${COMMAND} == "--run" ]]; then
  java -jar target/cuddly-journey-1.0.0.SNAPSHOT.jar
elif [[ ${COMMAND}= "-dkb" || ${COMMAND} == "--docker-build" ]]; then
  docker build -t cuddly-journey:lastest .
elif [[ ${COMMAND}= "-dkr" || ${COMMAND} == "--docker-run" ]]; then
  docker run -p 8080:8080 cuddly-journey:latest
elif [[ ${COMMAND}= "--dkc" || ${COMMAND} == "--docker-complete" ]]; then
  ./app.sh -dkb
  ./app.sh -dkr
else
  echo "Unknown input: ${COMMAND},  check: --help for usage"
fi
