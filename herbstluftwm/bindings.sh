#!/bin/bash

hc() {
    herbstclient "$@"
}

hc keyunbind --all

Mod=Mod4 
hc keybind $Mod-Shift-e quit
hc keybind $Mod-Shift-r reload
hc keybind $Mod-q close_or_remove 
hc keybind $Mod-Shift-q chain , close_or_remove , remove
hc keybind $Mod-Return spawn urxvtc
# custom shortcuts
hc keybind Control-1 spawn firefox
hc keybind Control-2 spawn pcmanfm
hc keybind Control-3 spawn urxvtc -e ncmpcpp
hc keybind Control-4 spawn skype
hc keybind Control-5 spawn urxvtc -e transmission-remote-cli
hc keybind XF86AudioRaiseVolume spawn amixer set Master 5%+
hc keybind XF86AudioLowerVolume spawn amixer set Master 5%-
hc keybind XF86AudioMute spawn amixer -q set Master toggle
hc keybind XF86AudioPlay spawn mpc toggle
hc keybind XF86AudioStop spawn mpc stop
hc keybind XF86AudioPrev spawn mpc prev
hc keybind XF86AudioNext spawn mpc next
hc keybind $Mod-d spawn dmenu_extended_run
hc keybind $Mod+0xff50 spawn systemctl suspend
hc keybind $Mod+End spawn poweroff
hc keybind $Mod+Insert  spawn scrot
hc keybind $Mod-a spawn ~/.config/herbstluftwm/scripts/swap.sh auto
hc keybind $Mod-l spawn loadstate
# focus
hc keybind Control-Left  focus left
hc keybind Control-Down  focus down
hc keybind Control-Up    focus up
hc keybind Control-Right focus right
hc keybind Control+j focus down
hc keybind Control+h focus left
hc keybind Control+l focus right
hc keybind Control+k focus up
# shift
hc keybind $Mod-Shift-Left  shift left
hc keybind $Mod-Shift-Down  shift down
hc keybind $Mod-Shift-Up    shift up
hc keybind $Mod-Shift-Right shift right
hc keybind $Mod-Shift-h     shift left
hc keybind $Mod-Shift-j     shift down
hc keybind $Mod-Shift-k     shift up
hc keybind $Mod-Shift-l     shift right
# cycle through tags
hc keybind $Mod-Tab spawn ~/.config/herbstluftwm/scripts/tagswitch.sh next
hc keybind $Mod-Shift-Tab spawn ~/.config/herbstluftwm/scripts/tagswitch.sh prev
hc keybind $Mod-Right use_index +1 --skip-visible
hc keybind $Mod-Left  use_index -1 --skip-visible
# layouting
hc keybind $Mod-r remove
hc keybind $Mod-Shift-space cycle_layout 1
hc keybind $Mod-s floating toggle
hc keybind $Mod-f fullscreen toggle
hc keybind $Mod-p pseudotile toggle
# mouse
hc mouseunbind --all
hc mousebind $Mod-Button1 move
hc mousebind $Mod-Button2 zoom
hc mousebind $Mod-Button3 resize
# focus
hc keybind $Mod-BackSpace   cycle_monitor
hc keybind Mod1-Tab  cycle_all +1
hc keybind Mod1-Shift-Tab  cycle_all -1
hc keybind $Mod-c cycle
hc keybind $Mod-x jumpto urgent
# splitting frames
hc keybind $Mod-v       chain , split   bottom  0.5 , cycle_frame 1
hc keybind $Mod-h       chain , split   right   0.5 , cycle_frame 1 , set_layout vertical  
hc keybind $Mod+space chain , split explode , cycle_frame 1  , set_layout vertical 
# resizing frames
resizestep=0.01
hc keybind $Mod-Control-h       resize left +$resizestep
hc keybind $Mod-Control-j       resize down +$resizestep
hc keybind $Mod-Control-k       resize up +$resizestep
hc keybind $Mod-Control-l       resize right +$resizestep
hc keybind $Mod-Control-Left    resize left +$resizestep
hc keybind $Mod-Control-Down    resize down +$resizestep
hc keybind $Mod-Control-Up      resize up +$resizestep
hc keybind $Mod-Control-Right   resize right +$resizestep
hc keybind $Mod+KP_Subtract   chain , resize down 0.02 , resize right 0.02
hc keybind $Mod+KP_Add  chain , resize up 0.02 , resize left 0.02

tag_names=("web" "files" "media" "other")
tag_keys=( {1..4} 0 )

hc rename default "${tag_names[0]}" || true
for i in ${!tag_names[@]} ; do
    hc add "${tag_names[$i]}"
    key="${tag_keys[$i]}"
    if ! [ -z "$key" ] ; then
        hc keybind "$Mod-$key" use_index "$i"
        hc keybind "$Mod-Shift-$key" move_index "$i"
    fi
done

