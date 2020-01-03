#!/bin/bash
process_id=$(pidof ffmpeg-record)
if [[ -z $process_id ]]; then
    ~/.config/i3/record.sh
else
    pkill -f ffmpeg-record
fi
