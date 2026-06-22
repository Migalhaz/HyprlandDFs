-- ===============================================
-- Binds & Gestures
-- ===============================================

local defs = require("defines")

hl.bind(defs.mainMod .. " + RETURN", hl.dsp.exec_cmd(defs.term))
hl.bind(defs.mainMod .. " + Q", hl.dsp.window.close()) 
hl.bind(defs.mainMod .. " + B", hl.dsp.exec_cmd(defs.browser))
hl.bind(defs.mainMod .. " + SHIFT + B", function()
    hl.dispatch(hl.dsp.focus({window = "class:" .. defs.browser}))
    hl.dispatch(hl.dsp.exec_cmd(defs.browser .. ' --new-tab "about:newtab"'))
end)
hl.bind(defs.mainMod .. " + ESCAPE", hl.dsp.exec_cmd("pkill -x rofi || " .. defs.scripts .. "/power.sh"))
hl.bind(defs.mainMod .. " + E", hl.dsp.exec_cmd(defs.fileManager))
hl.bind(defs.mainMod .. " + M", hl.dsp.exec_cmd(defs.term .. " -o confirm_os_window_close=0 qalc", { float=true, center=true, size="300 400"}))

hl.bind(defs.mainMod .. " + V", hl.dsp.window.float())
hl.bind(defs.mainMod .. " + F", hl.dsp.window.fullscreen())
hl.bind(defs.mainMod .. " + P", hl.dsp.window.pseudo())

hl.bind(defs.mainMod .. " + SPACE", hl.dsp.exec_cmd("pkill -x rofi || " .. defs.menu))
hl.bind(defs.mainMod .. " + TAB", hl.dsp.exec_cmd("pkill -x rofi || " .. defs.menu .. " window"))
hl.bind(defs.mainMod .. " + R", hl.dsp.exec_cmd("pkill -x rofi || " .. defs.menu .. " run"))
hl.bind(defs.mainMod .. " + C", hl.dsp.exec_cmd("pkill -x rofi || " .. defs.scripts .. "/cliphist_menu.sh"))
hl.bind(defs.mainMod .. " + W", hl.dsp.exec_cmd("pkill -x rofi || " .. defs.scripts .. "/Wallpaper_Programs/wall-picker.sh " .. defs.home .. "/Data/Pictures/Wallpapers"))
hl.bind(defs.mainMod .. " + S", hl.dsp.exec_cmd("pkill -x rofi || " .. defs.scripts .. "/Web_Search/web_search.sh"))

hl.bind(defs.mainMod .. " + F5", hl.dsp.exec_cmd("systemctl reboot"))
hl.bind(defs.mainMod .. " + F10", hl.dsp.exec_cmd("systemctl poweroff"))
hl.bind(defs.mainMod .. " + SHIFT + C", hl.dsp.exec_cmd('cliphist wipe && notify-send "Cliphist" "Hitory Cleared!"'))
hl.bind(defs.mainMod .. " + SHIFT + S", hl.dsp.exec_cmd('grim -g "$(slurp)" - | wl-copy'))
hl.bind(defs.mainMod .. " + CTRL + S", hl.dsp.exec_cmd('grim -g "$(slurp)" -t jpeg -q 100 ' .. defs.screenshots .. '/$(date "+%y_%m_%d_%Hh%Mm%Ss").jpg'))
hl.bind(defs.mainMod .. " + CTRL + P", hl.dsp.exec_cmd("hyprpicker | wl-copy"))

hl.bind(defs.mainMod .. " + H", hl.dsp.focus({ direction = "l" }))
hl.bind(defs.mainMod .. " + L", hl.dsp.focus({ direction = "r" }))
hl.bind(defs.mainMod .. " + K", hl.dsp.focus({ direction = "u" }))
hl.bind(defs.mainMod .. " + J", hl.dsp.focus({ direction = "d" }))

hl.bind(defs.mainMod .. " + SHIFT + H", hl.dsp.window.move({ direction = "l" }))
hl.bind(defs.mainMod .. " + SHIFT + L", hl.dsp.window.move({ direction = "r" }))
hl.bind(defs.mainMod .. " + SHIFT + K", hl.dsp.window.move({ direction = "u" }))
hl.bind(defs.mainMod .. " + SHIFT + J", hl.dsp.window.move({ direction = "d" }))

for i = 1, 10 do
    local key = tostring(i%10)
    hl.bind(defs.mainMod .. " + " .. key, hl.dsp.focus({ workspace = tostring(i) }))
    hl.bind(defs.mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = tostring(i) }))
end

hl.bind(defs.mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(defs.mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

hl.bind(defs.mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(defs.mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), { locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true })
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true, repeating = true })
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })
hl.bind("XF86PowerOff", hl.dsp.exec_cmd(defs.scripts .. "/power.sh"), { locked = true })
