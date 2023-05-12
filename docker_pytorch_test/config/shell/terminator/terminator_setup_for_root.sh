#!/usr/bin/env bash

file_dir=$(dirname "$(readlink -f "${0}")")

mkdir -p /root/.config/terminator
cp -r "${file_dir}"/config /root/.config/terminator/config
