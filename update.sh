#!/bin/bash

(rm -rf .config/*)

declare -a dirs=('i3' 'polybar' 'dunst' 'alacritty' 'rofi' 'picom')

for d in "${dirs[@]}"; do
  cp -rf "$HOME/.config/$d" .config/
done

git add .config
git stage .config
