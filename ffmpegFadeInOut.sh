#!/bin/bash
# https://odysee.com/@InfoZebra:1
echo Type path to video:
read path
suffix="faded"
out=$(echo $path | cut -d'.' -f 1)"-$suffix.mp4"
echo $out
lenght=$(ffprobe -v quiet -of csv=p=0 -show_entries format=duration "$path")
echo $lenght

ffmpeg -i "$path" -vf "fade=t=in:st=0:d=1,fade=t=out:st=$lenght:d=1" "$out"
