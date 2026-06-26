if not (mods["IndustrialRevolution3Assets1"]
        and mods["IndustrialRevolution3Assets2"]
        and mods["IndustrialRevolution3Assets3"]
        and mods["IndustrialRevolution3Assets4"]
    ) then
    return
end

require("constants")

if not data.raw["recipe-category"]["mixing-with-fluid"] then
    data:extend({
        {
            type = "recipe-category",
            name = "mixing-with-fluid"
        }
    })
end

local recycling = nil

if mods["recycler"] then
    local ok, lib = pcall(require, "__recycler__.recycling")
    if ok then
        recycling = lib
    end
end

local function always_recycle()
    return true
end

function generate_recycling_recipe(recipe)
    if not recycling or not recipe then return end
    recycling.generate_recycling_recipe(recipe, always_recycle)
end

function generate_self_recycling_recipe(item_or_recipe)
    if not recycling or not item_or_recipe then return end

    if item_or_recipe.type == "recipe" then
        recycling.generate_recycling_recipe(item_or_recipe, always_recycle)
    else
        recycling.generate_self_recycling_recipe(item_or_recipe)
    end
end

local recipe

require("prototypes/technology/ore-crushing")

if settings.startup["IR3-mixer"] and settings.startup["IR3-mixer"].value then
    require("prototypes/explosion/mixer")
    require("prototypes/entity/mixer")
    require("prototypes/item/mixer")
    require("prototypes/recipe/mixer")
end

require("prototypes/explosion/electric-crusher")
require("prototypes/entity/electric-crusher")
require("prototypes/item/electric-crusher")

recipe = data.raw["recipe"]["electric-crusher"]
if recipe then
    recipe.icon = nil
    recipe.icon_size = nil
    recipe.icons = {
        {
            icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/iron-grinder.png",
            icon_size = 64,
        }
    }

    generate_recycling_recipe(recipe)
end

require("prototypes/explosion/big-crusher")
require("prototypes/entity/big-crusher")
require("prototypes/item/big-crusher")

recipe = data.raw["recipe"]["big-crusher"]
if recipe then
    recipe.icon = nil
    recipe.icon_size = nil
    recipe.icons = {
        {
            icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/steel-grinder.png",
            icon_size = 64,
        }
    }

    generate_self_recycling_recipe(recipe)
end
