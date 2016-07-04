#!/bin/sh
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"
# export QT_QPA_PLATFORMTHEME="kde"

xset -b
xrandr --dpi 160 --output LVDS --mode 1366x768 --output HDMI-0 --mode 1920x1080 --primary --above LVDS

eval `ck-launch-session dbus-launch --sh-syntax --exit-with-session`
exec i3
# echo i3-$(date +'%g%m%d%k%M%S').log >> .i3.log
# exec i3 >> .i3.log 2>&1
