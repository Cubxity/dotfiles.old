#!/bin/bash

i3-msg workspace 10
alacritty --command fish -c cava &
alacritty --command fish -c cmatrix &

sleep 1

i3-msg split v
alacritty &
