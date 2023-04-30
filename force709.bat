:: Requires ffmpeg >5.0 in PATH!
ffmpeg -i "%~1" -codec copy -color_primaries bt709 -color_trc bt709 -colorspace bt709 "%~n1_709.mp4"
pause