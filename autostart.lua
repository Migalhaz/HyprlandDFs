-- ===============================================
-- Autostart
-- ===============================================

local defs = require("defines");

hl.on("hyprland.start", function()
    -- Cliphist
    hl.exec_cmd("cliphist wipe");
    hl.exec_cmd("wl-paste --type text --watch cliphist store");
    hl.exec_cmd("wl-paste --type image -- watch cliphist store");

    -- Wallpaper
    hl.exec_cmd("awww-daemon");

    -- Waybar
    hl.exec_cmd("killall -q waybar; sleep 1 && waybar");

    -- Cursor
    hl.exec_cmd("hyprctl setcursor " .. defs.cursorTheme .. " " .. defs.cursorSize);
    hl.exec_cmd("gsettings set org.gnome.desktop.interface cursor-theme '" .. defs.cursorTheme .. "'");
    hl.exec_cmd("gsettings set org.gnome.desktop.interface cursor-size " .. defs.cursorSize);

    -- Terminal
    hl.exec_cmd(defs.term .. " --hold fastfetch");

    -- DBUS
    hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP QT_QPA_PLATFORMTHEME")
end);
