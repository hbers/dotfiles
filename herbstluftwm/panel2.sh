#!/bin/bash
# vim: set fileencoding=utf-8 ts=4 sts=4 sw=4 tw=80 expandtab :
#"$panelfolder/tray.sh" &
herbstclient pad 0 24
conky -c ~/.config/herbstluftwm/conkyrc &

~/.config/herbstluftwm/tags.sh &

