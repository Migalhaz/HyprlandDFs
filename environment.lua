-- ===============================================
-- Environment Settings
-- ===============================================

local defs = require("defines");

-- Cursor Settings
hl.env("XCURSOR_SIZE", defs.cursorSize);
hl.env("HYPRCURSOR_SIZE", defs.cursorSize);
hl.env("XCURSOR_THEME", defs.cursorTheme);
hl.env("HYPRCURSOR_THEME", defs.cursorTheme);

-- GUIS Settings
hl.env("MOZ_ENABLE_WAYLAND", "1");

hl.env("QT_QPA_PLATFORM", "wayland;xcb");
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct");

hl.env("XDG_CURRENT_DESKTOP", "Hyprland");
hl.env("XDG_SESSION_TYPE", "wayland");
hl.env("XDG_SESSION_DESKTOP", "Hyprland");

defs.handle_desktop(function()
    hl.env("SALT_LICENSE_SERVER", defs.home .. "/.questa_license.dat"); -- Quartus
end)
