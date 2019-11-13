#!/bin/bash

# http://gregcor.com/2011/05/07/fix-dual-monitors-in-gnome-3-aka-my-workspaces-are-broken/
# --------------------------------------------------------- #
# Simple Gnome 3 script to allowing switching dual monitor  #
# workspace switching on and off - jamesbos@gmail.com       #
# Round 2: v.arribas.urjc@gmail.com
# --------------------------------------------------------- #

# Note [2019.11.13]
# settings migrated from `org.gnome.shell.overrides`
# to `org.gnome.mutter` since Gonome 3.30.0
# See: https://gitlab.gnome.org/GNOME/gnome-shell/issues/612


value=$(gsettings get org.gnome.mutter workspaces-only-on-primary)
SETTRUE='gsettings set org.gnome.mutter workspaces-only-on-primary true'
SETFALSE='gsettings set org.gnome.mutter workspaces-only-on-primary false'

if [ $value == 'true' ]
then
  eval $SETFALSE
  notify-send 'Dual Monitor Workspace Switching ENABLED'
else
  eval $SETTRUE
  notify-send 'Dual Monitor Workspace Switching DISABLED'
fi
