-- ===============================================
-- Devices
-- ===============================================

local defs = require("defines");

defs.handle_host(
    function() -- Desktop
        hl.monitor({output = "HDMI-A-1", mode = "1366x768@60", position = "0x0", scale = 1});
        hl.monitor({output = "HDMI-A-2", mode = "1366x768@60", position = "1366x0", scale = 1});

        for i = 1, 10, 1 do
            local monitorName = "HDMI-A-1"
            if (i%2 == 0) then monitorName = "HDMI-A-2" end
            local defaultWorkspace = i == 1 or i == 2
            hl.workspace_rule({ workspace = tostring(i), monitor = monitorName, default = defaultWorkspace})
        end
    end,
    function() -- Laptop
        --TODO
    end,
    function() -- Fallback
        --TODO
    end
);

