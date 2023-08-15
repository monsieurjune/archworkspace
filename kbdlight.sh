#!/bin/bash
cmd='brightnessctl --device=asus::kbd_backlight'
val=$($cmd get)
max=$($cmd max)

if (( $val == $max ))
then
	val=0
else
	val=$((val + 1))
fi

$cmd -q set $val
