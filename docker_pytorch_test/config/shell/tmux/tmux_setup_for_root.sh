#!/usr/bin/env bash

file_dir=$(dirname "$(readlink -f "${0}")")
username=${1:-"$USER"}

git clone https://github.com/tmux-plugins/tpm /root/.tmux/plugins/tpm \
&& sed "s|~|/home/${username}|g" "${file_dir}"/tmux.conf > /root/.tmux.conf \
&& /root/.tmux/plugins/tpm/scripts/install_plugins.sh
