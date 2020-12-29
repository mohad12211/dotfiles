#!/bin/sh

xrdb -merge /home/mohad/.Xresources
# start some nice programs
setxkbmap -layout us,ar -option grp:win_space_toggle
setbg 
picom &
sxhkd &
while true; do
    dwm 2> ~/.dwm.log
done
