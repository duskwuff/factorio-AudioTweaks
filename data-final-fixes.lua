local typemaps = require("audio_typemaps")
local soundsets = require("audio_soundsets")

local cfg_item_pick = settings.startup["AudioTweaks-item-pick"].value
local cfg_item_drop = settings.startup["AudioTweaks-item-drop"].value
local cfg_tools = settings.startup["AudioTweaks-tools"].value
local cfg_entity = settings.startup["AudioTweaks-entity"].value
local cfg_nve = settings.startup["AudioTweaks-nve"].value
local cfg_mute_bots = settings.startup["AudioTweaks-bots"].value
local cfg_mute_combinators = settings.startup["AudioTweaks-combinators"].value
local cfg_mute_armor = settings.startup["AudioTweaks-armor"].value

local no_sound = { filename = "__AudioTweaks__/sound/null.wav", volume = 0 }

for t in pairs(defines.prototypes["entity"]) do
    local tm = typemaps[t]
    if tm ~= nil then
        for _, p in pairs(data.raw[t] or {}) do
            local set = nil
            if cfg_entity == "mute" then
                set = {}
            elseif cfg_entity == "basic" and tm.open_basic then
                set = soundsets[tm.open_basic]
            elseif cfg_entity == "basic" or not p.open_sound or tm.override_vanilla then
                set = soundsets[tm.open]
            end
            if set ~= nil then
                p.open_sound = set.open_sound
                p.close_sound = set.close_sound
            end
        end
    end
end

for t in pairs(defines.prototypes["item"]) do
    local tm = typemaps[t]
    if tm ~= nil then
        for _, p in pairs(data.raw[t] or {}) do
            local cfg_pick = cfg_item_pick
            local cfg_drop = cfg_item_drop

            -- detect tool items
            if p.flags then
                for i = 1, #p.flags do
                    if p.flags[i] == "only-in-cursor" then
                        cfg_pick = cfg_tools
                        cfg_drop = cfg_tools
                    end
                end
            end

            if cfg_pick == "mute" then
                -- Setting item sounds to nil uses a default sound; use no_sound to override that
                p.pick_sound = no_sound
            elseif cfg_pick == "basic" then
                -- Default sounds it is!
                p.pick_sound = nil
            end

            if cfg_drop == "mute" then
                p.inventory_move_sound = no_sound
                p.drop_sound = no_sound
            elseif cfg_drop == "basic" then
                p.inventory_move_sound = nil
                p.drop_sound = nil
            end

            if tm.open then
                -- Item open/close sounds use tools settings, but don't have separate open_basic sounds
                local set = nil
                if cfg_tools == "mute" then
                    set = {}
                elseif cfg_tools == "basic" or not p.open_sound then
                    set = soundsets[tm.open]
                end
                if set ~= nil then
                    p.open_sound = set.open_sound
                    p.close_sound = set.close_sound
                end
            end
        end
    end
end

if cfg_nve == "mute" then
    for _, p in pairs(data.raw["night-vision-equipment"] or {}) do
        p.activate_sound = nil
        p.deactivate_sound = nil
    end
end

if cfg_mute_bots ~= "default" then
    for _, t in pairs({"construction-robot", "logistic-robot"}) do
        for _, p in pairs(data.raw[t] or {}) do
            p.working_sound = nil
        end
    end
end

if cfg_mute_combinators ~= "default" then
    for _, t in pairs({"arithmetic-combinator", "decider-combinator", "constant-combinator", "selector-combinator"}) do
        for _, p in pairs(data.raw[t] or {}) do
            p.working_sound = nil
        end
    end
end

if cfg_mute_armor ~= "default" then
    for _, p in pairs(data.raw["armor"]) do
        if string.find(cfg_mute_armor, "noflight") then
            p.flight_sound = nil
            p.takeoff_sound = nil
            p.landing_sound = nil
        end
        if string.find(cfg_mute_armor, "nosteps") then
            p.steps_sound = nil
        end
    end
end
