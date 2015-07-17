#!/bin/bash

#alias hc=herbstclient

hc() {
    herbstclient "$@"
}

hc attr theme.tiling.reset 1
hc attr theme.floating.reset 1
hc set frame_border_active_color '#E4B4C8'
hc set frame_border_normal_color '#101010'
hc set frame_bg_normal_color '#565656'
hc set frame_bg_active_color '#345F0C'
hc set frame_border_width 2
hc set always_show_frame 0
hc set frame_bg_transparent 1
hc set frame_transparent_width 0
hc set frame_gap 6

hc attr theme.active.color '#afdf87'
hc attr theme.normal.color '#414242'
hc attr theme.urgent.color '#bf3e6f'
hc attr theme.inner_width 0
hc attr theme.inner_color black
hc attr theme.border_width 2
hc attr theme.floating.border_width 2
hc attr theme.floating.outer_width 1
hc attr theme.floating.outer_color black
hc attr theme.active.inner_color '#3E4A00'
hc attr theme.active.outer_color '#3E4A00'
hc attr theme.background_color '#141414'

hc set window_gap 4
hc set frame_padding 1
hc set smart_window_surroundings 1
hc set smart_frame_surroundings 1
hc set mouse_recenter_gap 0
hc set focus_follows_mouse 1 
hc set default_frame_layout 1

