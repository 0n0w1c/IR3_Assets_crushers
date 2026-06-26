local recipe = {}

recipe.type = "recipe"
recipe.name = "mixer"
recipe.enabled = false
recipe.ingredients = table.deepcopy(data.raw["recipe"]["assembling-machine-1"].ingredients)
recipe.results = { { type = "item", name = "mixer", amount = 1 } }

data:extend({ recipe })

if generate_recycling_recipe then
    generate_recycling_recipe(recipe)
end

local technology_name = mods["crushing-industry"] and "concrete" or "ore-crushing"
local technology = data.raw["technology"][technology_name]

if technology then
    technology.effects = technology.effects or {}
    table.insert(technology.effects, { type = "unlock-recipe", recipe = "mixer" })
end
