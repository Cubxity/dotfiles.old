#!/bin/bash
TMPFILE="$(mktemp -t recording-XXXXXXX).mkv"

slop=$(slop -p 5 -f "%x %y %w %h %g %i") || exit 1
read -r X Y W H G ID < <(echo $slop)

notify-send "Recording started"

CMD="ffmpeg -f x11grab -s "$W"x"$H" -i :0.0+$X,$Y -r 60 "$TMPFILE""
bash -c "exec -a ffmpeg-record ""$CMD"""

notify-send 'Uploading...'

CODE=$(curl https://api.streamable.com/upload \
            -u $(cat ~/.local/streamable) \
            -F "file=@"$TMPFILE"" | \
            python3 -c "import sys, json; print(json.load(sys.stdin)['shortcode'])")
rm -f $TMPFILE

echo "https://streamable.com/"$CODE"" | xclip -sel c

notify-send "URL Copied to clipboard"
