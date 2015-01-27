#!/bin/bash

# --------------------------------------------------------- #
# Simple Gnome 3 script to allowing switching dual monitor  #
# workspace switching on and off - jamesbos@gmail.com       #
# --------------------------------------------------------- #

value=$(gsettings get org.gnome.shell.overrides workspaces-only-on-primary)

SETTRUE='gsettings set org.gnome.shell.overrides workspaces-only-on-primary true'
SETFALSE='gsettings set org.gnome.shell.overrides workspaces-only-on-primary false'

if [ $value == 'true' ]
then
  eval $SETFALSE
  notify-send 'Dual Monitor Workspace Switching ENABLED'
else
  eval $SETTRUE
  notify-send 'Dual Monitor Workspace Switching DISABLED'
fi
