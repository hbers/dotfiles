#!/bin/bash
# vim: set fileencoding=utf-8 ts=4 sts=4 sw=4 tw=80 expandtab :
# Florian Bruhin <me@the-compiler.org>

[[ $0 == /* ]] && script="$0" || script="${PWD}/${0#./}"
panelfolder=${script%/*}
trap 'herbstclient emit_hook quit_panel' TERM
herbstclient pad 0 24
herbstclient emit_hook quit_panel

#dzen2 -p -h 25 -w 260 -x 0 -y 0  &
#pids+=($!)

"$panelfolder/tray.sh" &
pids+=($!)

conky -c "$panelfolder/conkyrc" &
pids+=($!)

"$panelfolder/tags.sh" &
pids+=($!)

herbstclient --wait '^(quit_panel|reload).*'
kill -TERM "${pids[@]}" >/dev/null 2>&1
exit 0
