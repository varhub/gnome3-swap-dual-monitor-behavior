# gnome3-swap-dual-monitor-behavior
Symptom: second monitor of Gnome-Shell (Gnome3) is unattached from workspaces (a.k.a. fixed or static monitor)

Solution: gsettings set org.gnome.shell.overrides workspaces-only-on-primary false

## Requirements
 * Gnome 3.4+
 * gsettings (dconf-gsettings-backend)
 * notify-send (libnotify-bin)

## Source information
This issue is explained and solved here http://gregcor.com/2011/05/07/fix-dual-monitors-in-gnome-3-aka-my-workspaces-are-broken/

This approach has been taken from here http://pastebin.com/ZgRY8pFr

## Thanks
 * gregcor
 * Cedric Briner 
 * jamesbos@gmail.com

