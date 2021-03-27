#!/bin/bash

# Beginning of explanations
# https://odysee.com/@InfoZebra:1
# Execute the command from below, being in the same folder with this file
# sudo chmod u+x ffmpegFadeInOut.sh
# nano ~/.bashrc # or gedit ~/.bashrc
: "
Alias definitions.
You may want to put all your additions into a separate file like
~/.bash_aliases, instead of adding them here directly.
See /usr/share/doc/bash-doc/examples in the bash-doc package
"
# add this text at the end of file:
: "
# InfoZebra aliases
alias fdio='/home/anonymous/Programs/BashScripts/ffmpegFadeInOut.sh'
"
# Ctrl+S and restart Terminal
# see below where you can store this script
# http://bit.ly/storing-shell-scripts
# After that you can type fdio and fade the video
# End of explanations

echo Type path to video:
read path
suffix="faded"
out=$(echo $path | cut -d'.' -f 1)"-$suffix.mp4"
lenght=$(ffprobe -v quiet -of csv=p=0 -show_entries format=duration "$path")
lenght=$(echo $lenght-1 | bc) 
echo $lenght

ffmpeg -i "$path" -vf "fade=t=in:st=0:d=1,fade=t=out:st=$lenght:d=1" "$out"
