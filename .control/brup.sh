#!/bin/zsh
MAX=1
CUR=`xrandr --verbose | grep -m 1 -i brightness | cut -f2 -d ' '`
if (($CUR < $MAX))  ; then
    SET=`scale=1;echo "$CUR + 0.1" | bc`
    echo $SET
    xrandr --output eDP-1 --brightness $SET
    xrandr --output VGA-1 --brightness $SET
fi
