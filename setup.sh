#!/bin/bash

# Directory
config_dir=~/.config
fish_dir="$config_dir/fish"
hypr_dir="$config_dir/hypr"
kitty_dir="$config_dir/kitty"
waybar_dir="$config_dir/waybar"
sw_idle_dir="$config_dir/swayidle"
sw_lock_dir="$config_dir/swaylock"
sh_dir=~/.local/script

# Action
build='mkdir -p'
cfg=config

$build $fish_dir; cat ./config.fish > $fish_dir/config.fish
$build $hypr_dir; cat ./hyprland.conf > $hypr_dir/hyprland.conf
$build $kitty_dir; cat ./kitty.conf > $kitty_dir/kitty.conf

$build $waybar_dir
cat ./$cfg.waybar > $waybar_dir/$cfg
cat ./style.css > $waybar_dir/style.css

$build $sw_idle_dir;
cat ./$cfg.swayidle > $sw_idle_dir/$cfg

$build $sh_dir
cat ./lock.sh > $sh_dir/lock.sh; chmod +x $sh_dir/lock.sh
cat ./hibernate.sh > $sh_dir/hibernate.sh; chmod +x $sh_dir/hibernate.sh
cat ./hybrid_sleep.sh > $sh_dir/hybrid_sleep.sh; chmod +x $sh_dir/hybrid_sleep.sh
cat ./kbdlight.sh > $sh_dir/kbdlight.sh; chmod +x $sh_dir/kbdlight.sh

$build $sw_lock_dir; cat ./$cfg.swaylock > $sw_lock_dir/$cfg
