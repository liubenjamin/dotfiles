#!/bin/sh

MIME="$(file --mime-type --brief "$1")"

if [ "$MIME" != "image/gif" ]
then
  exit 1
fi

DISPLAY=:0 xwinwrap -ov -nf -ni -fs -g 1920x1080 -- sxiv -a -f "$1" -b -e WID -g 1920x1080 -s f &
DISPLAY=:0 xwinwrap -ov -nf -ni -fs -g 1920x1080+1920+0 -- sxiv -a -f "$1" -b -e WID -g 1920x1080 -s f &
