#!/bin/sh

log_info() {
  echo "[INFO]: ${1}"
}

log_warning() {
  echo "[WARNING]: ${1}"
}

log_error() {
  echo "[ERROR]: ${1}"
}

log_success() {
  echo "[SUCCESS]: ${1}"
}

dependencies="aws docker openssl"

checkDependencies() {
  for dependency in $dependencies; do
    if ! [ -x "$(command -v $dependency)" ]; then
      log_error "$dependency is not installed."
      exit 1
    fi
  done
}

throw() {
  echo -e "\n${1}"
  exit 1
}