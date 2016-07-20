#!/bin/bash

[[ -f ~/.bashrc ]] && . ~/.bashrc

PATH="${PATH}:${HOME}/.i3"
PATH="${PATH}:${HOME}/.local/bin"

LC_COLLATE="zh_CN.UTF-8"

export XDG_RUNTIME_DIR=/tmp/.runtime-${USER}
export XDG_CACHE_HOME=/tmp/.cache-${USER}
if [ ! -d /tmp/thumbnails-${USER} ]; then
    mkdir "${XDG_RUNTIME_DIR}"
    chmod 0700 "${XDG_RUNTIME_DIR}"

    mkdir "${XDG_CACHE_HOME}"
    chmod 0700 "${XDG_CACHE_HOME}"

    mkdir /tmp/thumbnails-${USER}
    chmod 0700 /tmp/thumbnails-${USER}
    ln -sf /tmp/thumbnails-${USER} ~/.thumbnails

    # Atuostart X
    if [[ ! ${DISPLAY} && ${XDG_VTNR} == 1 ]]; then
        exec startx
    fi
fi
