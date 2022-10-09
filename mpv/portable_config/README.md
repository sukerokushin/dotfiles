basically ganked from [LightArrowsEXE](https://github.com/LightArrowsEXE/dotfiles/tree/master/mpv/.config/mpv) and [Moodkiller's](https://github.com/Moodkiller/MPV-Made-Easy/tree/master/mpv) repos. my eternal thanks to them. especially light, you're much too kind to me.

## How to install VapourSynth and the filtering dependencies

1) Install the [latest version of VapourSynth](https://github.com/vapoursynth/vapoursynth/releases).<br>
1.5. Install the latest required version of [Python](https://www.python.org/downloads/), and make sure it's added to PATH.<br>
2) Locate the following directories:<br>
 \* C:\Users\[your username]\AppData\Roaming\VapourSynth\plugins64<br>
 \* C:\Users\[your username]\AppData\Local\Programs\Python\Python3x\Lib\site-packages OR<br>\* C:\Python3x (replace 3x with the relevant version of Python)<br>
3) Check the .vpy script(s) in the repo (in the `vs` directory) and follow the links to the listed dependencies.
4) Download and move the required files to the relevant directories (Python modules go to the `site-packages` directory, everything else goes in the `plugins64` directory).<br>Alternatively, use [VSRepo](https://github.com/vapoursynth/vsrepo) to install the dependencies. It came free with ~~your fuckin' Xbox~~ Vapoursynth.<br>
5) Verify that the scripts are running as intended by pressing the `~` key during playback. It should tell you if it failed and what the missing dependencies are if it did.


## Dependencies

### External programs and fonts

* [yt-dlp](https://github.com/yt-dlp/yt-dlp/releases)
* [Lato](https://fonts.google.com/specimen/Lato) and [Source Sans Pro](https://github.com/adobe-fonts/source-sans)

### VapourSynth modules/plugins

* [VIVTC](https://github.com/vapoursynth/vivtc)
* [znedi3](https://github.com/sekrit-twc/znedi3)
* [vsutil](https://pypi.org/project/vsutil)

### Scripts and shaders

* [mpv-webm](https://github.com/ekisu/mpv-webm)
* [youtube-quality](https://github.com/christoph-heinrich/mpv-youtube-quality)
* [mpv-thumbnail-script](https://github.com/TheAMM/mpv_thumbnail_script) (please tell if a better fork/implementation of this exists)
* [deinterlace.vpy](https://github.com/LightArrowsEXE/dotfiles/blob/master/mpv/.config/mpv/vs/deinterlace.vpy)

### Shader files

* [FSRCNNX](https://github.com/igv/FSRCNN-TensorFlow/releases)
* [NNEDI3 and ravu-lite-r3](https://github.com/bjin/mpv-prescalers)
* [SSimDownscaler](https://gist.github.com/igv/36508af3ffc84410fe39761d6969be10)
* [KrigBilateral](https://gist.github.com/igv/a015fc885d5c22e6891820ad89555637)
* [noise_static_luma](https://pastebin.com/yacMe6EZ)

### *For additional shaders and scripts, check out the following sources*

* [mpv shaders](https://github.com/mpv-player/mpv/wiki/User-Scripts#user-shaders)
* [mpv scripts](https://github.com/mpv-player/mpv/wiki/User-Scripts#lua-scripts)