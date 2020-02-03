#!/bin/bash

set -eu

OPTIONS=--dir=dist
if [ $# = 1 ]; then
  if [ "$1" = "--prod" ]; then
    OPTIONS="$OPTIONS --prod"
  fi
fi

yarn netlify deploy $OPTIONS
