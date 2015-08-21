if pgrep "redshift" > /dev/null
then
    killall redshift
else
    redshift
fi
