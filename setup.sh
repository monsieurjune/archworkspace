#!/bin/bash

# Directory
config_dir=~/.config
sh_dir=~/.local/script/hyprland

# Fish
cp ./fish/config $config_dir/fish/config

# Hyprland
cp ./hypr/hyprland.conf $config_dir/hypr/hyprland.conf

# Kitty
cp ./kitty/kitty.conf $config_dir/kitty/kitty.conf

# Waybar
cp ./waybar/config $config_dir/waybar/config
cp ./waybar/style.css $config_dir/waybar/style.css
cp ./waybar/top $config_dir/waybar/top
cp ./waybar/bottom $config_dir/waybar/bottom

# Swayidle
cp ./swayidle/config $config_dir/swayidle/config

# Swaylock
cp ./swaylock/config $config_dir/swaylock/config

# Script
cp ./script/hibernate.sh $sh_dir/hibernate.sh
cp ./script/hybrid_sleep.sh $sh_dir/hybrid_sleep.sh
cp ./script/lock.sh $sh_dir/lock.sh
cp ./script/kbdlight.sh $sh_dir/kbdlight.sh
cp ./script/logout.sh $sh_dir/logout.sh
cp ./script/btop.sh $sh_dir/btop.sh