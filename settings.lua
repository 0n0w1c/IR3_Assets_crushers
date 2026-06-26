local settings_to_extend = {
    {
        type = "bool-setting",
        name = "IR3-mixer",
        setting_type = "startup",
        default_value = true,
        order = "a",
    },
    {
        type = "string-setting",
        name = "IR3-big-crusher-size",
        setting_type = "startup",
        allowed_values = { "3x3", "4x4" },
        default_value = "4x4",
        order = "b",
    }
}

data:extend(settings_to_extend)
