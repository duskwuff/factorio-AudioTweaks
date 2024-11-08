-- data:extend{
--     {
--         name    = "AudioTweaks-open-close",
--         type    = "string-setting",
--         setting_type    = "startup",
--         default_value   = "add-machine",
--         allowed_values = {
--             "",
--             "add-machine",
--             "all-quiet",
--         },
--     },
-- }

data:extend{
    {
        name = "AudioTweaks-item-pick",
        type = "string-setting",
        setting_type = "startup",
        default_value = "default",
        allowed_values = {
            "default",
            "basic",
            "mute",
        },
        order = "00",
    },

    {
        name = "AudioTweaks-item-drop",
        type = "string-setting",
        setting_type = "startup",
        default_value = "default",
        allowed_values = {
            "default",
            "basic",
            "mute",
        },
        order = "01",
    },

    {
        name = "AudioTweaks-tools",
        type = "string-setting",
        setting_type = "startup",
        default_value = "default",
        allowed_values = {
            "default",
            "basic",
            "mute",
        },
        order = "02",
    },

    {
        name = "AudioTweaks-entity",
        type = "string-setting",
        setting_type = "startup",
        default_value = "default",
        allowed_values = {
            "default",
            "basic",
            "mute",
        },
        order = "03",
    },

    {
        name = "AudioTweaks-nve",
        type = "string-setting",
        setting_type = "startup",
        default_value = "default",
        allowed_values = {
            "default",
            "mute",
        },
        order = "04",
    },
}
