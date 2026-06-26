if not (mods["IndustrialRevolution3Assets1"]
        and mods["IndustrialRevolution3Assets2"]
        and mods["IndustrialRevolution3Assets3"]
        and mods["IndustrialRevolution3Assets4"]
    ) then
    return
end

if mods["crushing-industry"] then
    return
end

local item_sounds = require("__base__/prototypes/item_sounds")
local item_tints = require("__base__/prototypes/item-tints")

local function extend_if_missing(kind, name, prototype)
    data.raw[kind] = data.raw[kind] or {}
    if not data.raw[kind][name] then
        data:extend({ prototype })
    end
end

local crusher_categories = {
    "basic-crushing",
    "basic-crushing-or-crafting",
    "basic-crushing-or-hand-crafting",
}

for _, category in pairs(crusher_categories) do
    extend_if_missing("recipe-category", category, { type = "recipe-category", name = category })
end

extend_if_missing("recipe-category", "mixing-with-fluid", { type = "recipe-category", name = "mixing-with-fluid" })

local function machine_item(name, icon, order)
    extend_if_missing("item", name, {
        type = "item",
        name = name,
        icon = icon,
        icon_size = 64,
        subgroup = "extraction-machine",
        order = order,
        inventory_move_sound = item_sounds.mechanical_inventory_move,
        pick_sound = item_sounds.mechanical_inventory_pickup,
        drop_sound = item_sounds.mechanical_inventory_move,
        place_result = name,
        random_tint_color = item_tints.iron_rust,
        stack_size = 50,
        weight = 20 * kg,
    })
end

machine_item("electric-crusher", "__IndustrialRevolution3Assets1__/graphics/icons/64/iron-grinder.png",
    "a[items]-h[electric-crusher]")
machine_item("big-crusher", "__IndustrialRevolution3Assets1__/graphics/icons/64/steel-grinder.png",
    "a[items]-j[big-crusher]")

local electric_crusher = table.deepcopy(data.raw["furnace"]["electric-furnace"])
electric_crusher.name = "electric-crusher"
electric_crusher.localised_name = { "entity-name.electric-crusher" }
electric_crusher.icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/iron-grinder.png"
electric_crusher.icon_size = 64
electric_crusher.minable = { mining_time = 0.2, result = "electric-crusher" }
electric_crusher.crafting_categories = table.deepcopy(crusher_categories)
electric_crusher.crafting_speed = 1
electric_crusher.next_upgrade = nil
electric_crusher.fast_replaceable_group = nil
extend_if_missing("furnace", "electric-crusher", electric_crusher)

local big_crusher = table.deepcopy(data.raw["assembling-machine"]["assembling-machine-2"])
big_crusher.name = "big-crusher"
big_crusher.localised_name = { "entity-name.big-crusher" }
big_crusher.icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/steel-grinder.png"
big_crusher.icon_size = 64
big_crusher.minable = { mining_time = 0.3, result = "big-crusher" }
big_crusher.crafting_categories = table.deepcopy(crusher_categories)
big_crusher.crafting_speed = 3
big_crusher.module_slots = 3
big_crusher.next_upgrade = nil
big_crusher.fast_replaceable_group = nil
extend_if_missing("assembling-machine", "big-crusher", big_crusher)

local function recipe_if_missing(name, prototype)
    extend_if_missing("recipe", name, prototype)
end

recipe_if_missing("electric-crusher", {
    type = "recipe",
    name = "electric-crusher",
    enabled = false,
    energy_required = 5,
    ingredients = {
        { type = "item", name = "steel-plate",        amount = 5 },
        { type = "item", name = "electronic-circuit", amount = 5 },
        { type = "item", name = "iron-gear-wheel",    amount = 10 },
        { type = "item", name = "stone-brick",        amount = 10 },
    },
    results = { { type = "item", name = "electric-crusher", amount = 1 } },
})

recipe_if_missing("big-crusher", {
    type = "recipe",
    name = "big-crusher",
    enabled = false,
    energy_required = 10,
    ingredients = {
        { type = "item", name = "electric-crusher",   amount = 1 },
        { type = "item", name = "steel-plate",        amount = 20 },
        { type = "item", name = "electronic-circuit", amount = 10 },
        { type = "item", name = "iron-gear-wheel",    amount = 20 },
    },
    results = { { type = "item", name = "big-crusher", amount = 1 } },
})

local ore_crushing_effects = {
    { type = "unlock-recipe", recipe = "electric-crusher" },
    { type = "unlock-recipe", recipe = "big-crusher" },
}

extend_if_missing("technology", "ore-crushing", {
    type = "technology",
    name = "ore-crushing",
    icon = "__IndustrialRevolution3Assets1__/graphics/icons/256/iron-grinder.png",
    icon_size = 256,
    prerequisites = { "automation" },
    unit = {
        count = 50,
        ingredients = { { "automation-science-pack", 1 } },
        time = 15
    },
    effects = ore_crushing_effects,
})
