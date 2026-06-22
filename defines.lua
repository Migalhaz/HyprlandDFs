-- ===============================================
-- Definitions
-- ===============================================

local defs = {};

-- Programs
defs.term = "kitty";
defs.fileManager = "kitty yazi";
defs.menu = "rofi -show";
defs.browser = "firefox";

-- Paths
defs.home = "/home/miguel";
defs.screenshots = defs.home .. "/Pictures/Screenshots";
defs.scripts = defs.home .. "/.config/hypr/scripts";

-- Hypr Settings
--- Visual
defs.bcolor1 = "7018bcff";
defs.bcolor2 = "bc18b7ff";
defs.bcolori = "38383850";
defs.shadow = "1a1a1aee";

-- Cursor
defs.cursorTheme = "Bibata-Modern-Ice";
defs.cursorSize = "16";

--- Input
defs.mainMod = "SUPER";

-- Host Logic
local file = io.open("/etc/hostname", "r");

if file then
    defs.hostname = file and file:read("*a"):gsub("%s+", "");
    file:close();
else
    defs.hostname = "unknown";
end

defs.desktopHostname = "B650M-Arch";
defs.laptopHostname = "ThinkpadL14";

function defs.handle_host(desktop_func, laptop_func, fallback_func)
    if defs.hostname == defs.desktopHostname then
        if desktop_func then desktop_func() end
    elseif defs.hostname == defs.laptopHostname then
        if laptop_func then laptop_func() end
    else
        if fallback_func then fallback_func() end
    end
end

function defs.handle_desktop(desktop_func, fallback_func)
    defs.handle_host(desktop_func, nil, fallback_func)
end

function defs.handle_laptop(laptop_func, fallback_func)
    defs.handle_host(nil, laptop_func, fallback_func)
end

return defs;
