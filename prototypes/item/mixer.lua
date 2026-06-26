local item_sounds         = require("__base__/prototypes/item_sounds")
local item_tints          = require("__base__/prototypes/item-tints")

local item                = {}

item.type                 = "item"
item.name                 = "mixer"
item.icon                 = "__IndustrialRevolution3Assets1__/graphics/icons/64/iron-mixer.png"
item.subgroup             = "extraction-machine"
item.order                = "a[items]-i[mixer]"
item.inventory_move_sound = item_sounds.mechanical_inventory_move
item.pick_sound           = item_sounds.mechanical_inventory_pickup
item.drop_sound           = item_sounds.mechanical_inventory_move
item.place_result         = "mixer"
item.random_tint_color    = item_tints.iron_rust
item.stack_size           = 50
item.weight               = 20 * kg

data:extend({ item })
