#!/bin/bash
a=${1%.*}
ffmpeg -i $1 -codec copy -color_primaries bt709 -color_trc bt709 -colorspace bt709 "$a"_709.mp4