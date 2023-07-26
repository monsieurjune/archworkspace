#!/bin/bash

# Directory
CONFIG_DIR=~/.config
FISH_DIR="$CONFIG_DIR/fish"
HYPR_DIR="$CONFIG_DIR/hypr"
KITTY_DIR="$CONFIG_DIR/kitty"
WAYBAR_DIR="$CONFIG_DIR/waybar"
SW_IDLE_DIR="$CONFIG_DIR/swayidle"
SW_LOCK_DIR="$CONFIG_DIR/swaylock"

# Action
BUILD='mkdir -p'
CFG=config

$BUILD $FISH_DIR; cat ./config.fish > $FISH_DIR/config.fish
$BUILD $HYPR_DIR; cat ./hyprland.conf > $HYPR_DIR/hyprland.conf
$BUILD $KITTY_DIR; cat ./kitty.conf > $KITTY_DIR/kitty.conf

$BUILD $WAYBAR_DIR
cat ./$CFG.waybar > $WAYBAR_DIR/$CFG
cat ./style.css > $WAYBAR_DIR/style.css

$BUILD $SW_IDLE_DIR;
cat ./$CFG.swayidle > $SW_IDLE_DIR/$CFG
cat ./lock.sh > $SW_IDLE_DIR/lock.sh; chmod +x $SW_IDLE_DIR/lock.sh

$BUILD $SW_LOCK_DIR; cat ./$CFG.swaylock > $SW_LOCK_DIR/$CFG
