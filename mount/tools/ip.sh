#!/usr/bin/env bash

ip="$(hostname -I | tr -d ' ')"
[[ -z "${1}" ]] && port="" || port=":${1}"
echo "${ip}${port}"
