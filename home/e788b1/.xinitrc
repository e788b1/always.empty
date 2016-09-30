#!/bin/sh
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"
# export QT_QPA_PLATFORMTHEME="kde"

xset -b
# xrandr --dpi 144 --output LVDS --mode 1366x768 --output HDMI-0 --mode 1920x1080 --primary --left-of LVDS
# xrandr --dpi 108 --output LVDS --off --output HDMI-0 --mode 1920x1080 --primary --left-of LVDS
xrandr --output LVDS --off --output HDMI-0 --mode 1920x1080 --primary --left-of LVDS


# Clean up after GDM (GDM sets the number of desktops to one)
xprop -root -remove _NET_NUMBER_OF_DESKTOPS -remove _NET_DESKTOP_NAMES -remove _NET_CURRENT_DESKTOP 2> /dev/null

# Enable GTK+2 integration for OpenOffice.org, if available.
export SAL_USE_VCLPLUGIN=gtk

# Launch DBus if needed
if which dbus-launch >/dev/null && test -z "$DBUS_SESSION_BUS_ADDRESS"; then
    eval "$(dbus-launch --sh-syntax --exit-with-session)"
fi
exec i3
# echo i3-$(date +'%g%m%d%k%M%S').log >> .i3.log
# exec i3 >> .i3.log 2>&1
