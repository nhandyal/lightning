#!/usr/bin/env bash

# check python3 version is 3.11.*
if [[ $(python3 --version) =~ ^Python\ 3\.11 ]]; then
  exit 0
else
  echo "Python 3.11.* is not installed"
  exit 1
fi
