return {
    ["accumulator"] = { open = "electric-large", open_basic = "machine" },
    ["agricultural-tower"] = { open = "machine" },
    ["ammo-turret"] = { open = "turret", open_basic = "machine" },
    ["arithmetic-combinator"] = { open = "combinator", open_basic = "machine" },
    ["artillery-turret"] = { open = "artillery", open_basic = "machine" },
    ["artillery-wagon"] = { open = "artillery", open_basic = "chest" },
    ["assembling-machine"] = { open = "machine" },
    -- ["asteroid"] - not interactable
    ["asteroid-collector"] = { open = "machine" },
    ["beacon"] = { open = "beacon", open_basic = "machine" },
    ["boiler"] = { open = "steam", open_basic = "machine" },
    ["burner-generator"] = { open = "machine" },
    -- ["capture-robot"] - not interactable
    ["car"] = { open = "car-door", open_basic = "chest" },
    -- ["cargo-bay"] - not interactable
    ["cargo-landing-pad"] = { open = "silo", open_basic = "machine" },
    -- ["cargo-pod"] - not interactable
    ["cargo-wagon"] = { open = "cargo-wagon", open_basic = "chest" },
    -- ["character"] - not interactable?
    -- ["combat-robot"] - not interactable
    ["constant-combinator"] = { open = "combinator", open_basic = "machine" },
    -- ["construction-robot"] - not interactable
    ["container"] = { open = "chest" },
    ["decider-combinator"] = { open = "combinator", open_basic = "machine" },
    ["display-panel"] = { open = "combinator", open_basic = "machine"},
    ["electric-energy-interface"] = { open = "electric-large", open_basic = "machine", override_vanilla = true },
    ["electric-pole"] = { open = "electric-network" },
    ["electric-turret"] = { open = "turret", open_basic = "machine" },
    ["fluid-turret"] = { open = "turret", open_basic = "machine" },
    -- ["fluid-wagon"] - not interactable
    ["furnace"] = { open = "machine" },
    ["fusion-generator"] = { open = "metal-large", open_basic = "machine" },
    ["fusion-reactor"] = { open = "metal-large", open_basic = "machine" },
    -- ["gate"] - not interactable, gate controllers are walls
    ["generator"] = { open = "machine" },
    ["heat-interface"] = { open = "machine" },
    -- ["heat-pipe"] - not interactable
    ["infinity-container"] = { open = "chest" },
    ["infinity-pipe"] = { open = "metal-small", open_basic = "machine" },
    ["inserter"] = { open = "inserter", open_basic = "machine" },
    ["lab"] = { open = "lab", open_basic = "machine", override_vanilla = true },
    ["lamp"] = { open = "electric-small", open_basic = "machine" },
    -- ["land-mine"] - not interactable
    ["lane-splitter"] = { open = "machine" },
    -- ["lightning-attractor"] - not interactable
    -- ["linked-belt"] - not interactable
    ["linked-container"] = { open = "chest" },
    ["loader"] = { open = "machine" },
    ["loader-1x1"] = { open = "machine" },
    ["locomotive"] = { open = "train-door", open_basic = "chest" },
    ["logistic-container"] = { open = "chest" },
    -- ["logistic-robot"] - not interactable
    ["market"] = { open = "machine" },
    ["mining-drill"] = { open = "drill", open_basic = "machine" }, -- weird for pumpjacks but meh
    ["offshore-pump"] = { open = "machine" },
    ["pipe"] = { open = "metal-small", open_basic = "machine" },
    ["pipe-to-ground"] = { open = "metal-small", open_basic = "machine" },
    -- ["player-port"] - deprecated
    ["power-switch"] = { open = "machine" },
    ["programmable-speaker"] = { open = "combinator", open_basic = "machine", override_vanilla = true },
    ["pump"] = { open = "machine" },
    -- ["radar"] - not interactable
    -- none of the rail segment entities are interactable
    ["rail-chain-signal"] = { open = "rail-signal", open_basic = "machine" },
    ["rail-signal"] = { open = "rail-signal", open_basic = "machine" },
    -- ["rail-support"] - not interactable
    ["reactor"] = { open = "nuclear", open_basic = "machine" },
    ["roboport"] = { open = "roboport", open_basic = "machine" },
    ["rocket-silo"] = { open = "silo", open_basic = "machine" },
    -- ["segment"] - not interactable
    -- ["segmented-unit"] - not interactable
    ["selector-combinator"] = { open = "combinator", open_basic = "machine", override_vanilla = true },
    -- ["simple-entity-with-force"]
    -- ["simple-entity-with-owner"]
    -- ["solar-panel"] - not interactable
    ["space-platform-hub"] = { open = "silo", open_basic = "machine" },
    -- ["spider-leg"] - not interactable
    ["spider-vehicle"] = { open = "spidertron", open_basic = "chest" },
    ["splitter"] = { open = "machine" },
    ["storage-tank"] = { open = "metal", open_basic = "chest" },
    ["temporary-container"] = { open = "chest" },
    -- ["thruster"] - not interactable
    ["train-stop"] = { open = "train-stop", open_basic = "machine" },
    ["transport-belt"] = { open = "transport-belt", open_basic = "machine" },
    ["turret"] = { open = "turret", open_basic = "machine" },
    -- ["underground-belt"] - not interactable
    -- ["unit"] - not interactable
    -- ["unit-spawner"] - not interactable
    ["wall"] = { open = "machine" },

    -- Other interactable entities
    ["character-corpse"] = { open = "character-corpse", open_basic = "chest" },

    -- Items
    ["item"] = {},
    ["ammo"] = {},
    ["capsule"] = {},
    ["item-with-entity-data"] = {},
    ["item-with-label"] = {},
    ["item-with-inventory"] = { open = "item" },
    ["blueprint-book"] = { open = "item" },
    ["item-with-tags"] = {},
    ["selection-tool"] = {},
    ["blueprint"] = { open = "item" },
    ["copy-paste-tool"] = {},
    ["deconstruction-item"] = { open = "item" },
    ["spidertron-remote"] = {},
    ["upgrade-item"] = { open = "item" },
    ["module"] = {},
    ["rail-planner"] = {},
    ["space-platform-starter-pack"] = {},
    ["tool"] = {},
    ["armor"] = { open = "armor" },
    ["repair-tool"] = {},
}
