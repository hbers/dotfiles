#!/bin/bash

hc() {
    herbstclient "$@"
}

hc unrule -F
hc rule focus=on # normally focus new clients
hc rule class~'(Firefox)' tag=web index=00
hc rule class~'(mpv)' index=11
hc rule class~'(MComix)' pseudotile=on
hc rule class~'(Thunderbird)' tag=other
hc rule class~'(Skype)' tag=other
hc rule class~'(feh)' pseudotile=on
hc rule windowtype~'_NET_WM_WINDOW_TYPE_(DIALOG|UTILITY|SPLASH)' pseudotile=on
hc rule windowtype='_NET_WM_WINDOW_TYPE_DIALOG' focus=on
hc rule windowtype~'_NET_WM_WINDOW_TYPE_(NOTIFICATION|DOCK|DESKTOP)' manage=off
hc unlock
hc split vertical 0.5
hc remove
herbstclient set tree_style '╾│ ├└╼─┐'

