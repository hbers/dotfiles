#!/bin/sh
#
# ~/.xinitrc

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

#exec i3
exec herbstluftwm
