dunstify -u low -p -r 1 "Vol : $(amixer get Master -M | grep -oE "[[:digit:]]*%")"
