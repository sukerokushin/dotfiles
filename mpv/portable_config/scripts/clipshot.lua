--  Based on ObserverOfTime's clipshot.lua
--  Original source: https://github.com/ObserverOfTime/mpv-scripts/blob/master/clipshot.lua
--  Modified to save in png on Windows (tested) and Linux (untested, should work)
--  Removed macOS block as I have no idea/guarantee it'll work

NAME = 'mpv-screenshot.png'

if package.config:sub(1, 1) == '\\' then -- Windows
    SHOT = os.getenv('TEMP')..'\\'..NAME
    CMD = {
        'powershell', '-NoProfile', '-Command', ([[& {
            Add-Type -Assembly System.Windows.Forms;
            Add-Type -Assembly System.Drawing;
            $shot = [Drawing.Image]::FromFile(%q);
            [Windows.Forms.Clipboard]::SetImage($shot);
        }]]):format(SHOT)
    }
else -- Unix
    SHOT = '/tmp/'..NAME
    -- os.getenv('OSTYPE') doesn't work
    local ostype = io.popen('printf "$OSTYPE"', 'r'):read()
    if os.getenv('XDG_SESSION_TYPE') == 'wayland' then -- Wayland
        CMD = {'sh', '-c', ('wl-copy < %q'):format(SHOT)}
    else -- Xorg
        CMD = {'xclip', '-sel', 'c', '-t', 'image/PNG', '-i', SHOT}
    end
end


function clipshot(arg)
    return function()
        mp.commandv('screenshot-to-file', SHOT, arg)
        mp.command_native_async({'run', unpack(CMD)}, function(suc, _, err)
            mp.osd_message(suc and 'Copied screenshot to clipboard' or err)
        end)
    end
end

mp.add_key_binding('Shift+F6',	'clipshot-subs',	clipshot('subtitles'))
mp.add_key_binding('Shift+F5',	'clipshot-video',	clipshot('video'))
mp.add_key_binding('Shift+F7',	'clipshot-window',	clipshot('window'))
