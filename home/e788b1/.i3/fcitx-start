#!/bin/bash

fcitx-remote > /dev/null 2>&1
if [ $? = "1" ]; then
    echo "Fcitx seems is not running"
    fcitx > /dev/null 2>&1 &
else
    echo "Fcitx is running correctly."
fi
