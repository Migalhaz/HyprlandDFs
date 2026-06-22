-- ===============================================
-- Window & Layer Rules
-- ===============================================

hl.window_rule({ match = { class = ".*" }, suppress_event = "maximize" })

hl.window_rule({
    match = { class = "^$", title = "^$", xwayland = true, float = true, fullscreen = false, pin = false },
    no_focus = true
})

hl.window_rule({
    match = { class = "^(xdg%-desktop%-portal%-gtk)$" },
    float = true
})

hl.layer_rule({ match = { namespace = "rofi" }, blur = true })
