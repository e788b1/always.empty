#!/bin/bash

[[ -f ~/.bashrc ]] && . ~/.bashrc

PATH="${PATH}:${HOME}/.i3"
PATH="${PATH}:${HOME}/.local/bin"

LC_COLLATE="zh_CN.UTF-8"

export XDG_RUNTIME_DIR=/tmp/.runtime-${USER}
# export XDG_CACHE_HOME=/tmp/.cache-${USER}
if [ ! -d ${XDG_RUNTIME_DIR} ]; then
    mkdir "${XDG_RUNTIME_DIR}"
    chmod 0700 "${XDG_RUNTIME_DIR}"

    mkdir "${XDG_CACHE_HOME}"
    chmod 0700 "${XDG_CACHE_HOME}"

    # Atuostart X
    [[ $(tty) = "/dev/tty1" ]] && exec startx
fi
