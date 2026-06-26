local entity = data.raw["furnace"]["electric-crusher"]
if not entity then return end

local SCALE                   = 2 / 3

entity.icon                   = "__IndustrialRevolution3Assets1__/graphics/icons/64/iron-grinder.png"

entity.corpse                 = "medium-remnants"
entity.dying_explosion        = "electric-crusher-explosion"

entity.damaged_trigger_effect = {
    {
        damage_type_filters = {
            "fire",
            "impact"
        },
        frame_speed = 1,
        frame_speed_deviation = 0.1,
        initial_height = 0.5,
        initial_vertical_speed = 0.07,
        initial_vertical_speed_deviation = 0.1,
        offset_deviation = {
            { -0.5, -0.5 },
            { 0.5,  0.5 }
        },
        particle_name = "copper-particle",
        probability = 0.126232741617357,
        repeat_count = 1,
        speed_from_center = 0.02,
        speed_from_center_deviation = 0.01,
        type = "create-particle"
    },
    {
        damage_type_filters = {
            "fire",
            "impact"
        },
        frame_speed = 1,
        frame_speed_deviation = 0.1,
        initial_height = 0.5,
        initial_vertical_speed = 0.07,
        initial_vertical_speed_deviation = 0.1,
        offset_deviation = {
            { -0.5, -0.5 },
            { 0.5,  0.5 }
        },
        particle_name = "glass-particle",
        probability = 0.068376068376068364,
        repeat_count = 1,
        speed_from_center = 0.02,
        speed_from_center_deviation = 0.01,
        type = "create-particle"
    },
    {
        damage_type_filters = {
            "fire",
            "impact"
        },
        frame_speed = 1,
        frame_speed_deviation = 0.1,
        initial_height = 0.5,
        initial_vertical_speed = 0.07,
        initial_vertical_speed_deviation = 0.1,
        offset_deviation = {
            { -0.5, -0.5 },
            { 0.5,  0.5 }
        },
        particle_name = "iron-particle",
        probability = 0.62590401051939519,
        repeat_count = 1,
        speed_from_center = 0.02,
        speed_from_center_deviation = 0.01,
        type = "create-particle"
    }
}

entity.graphics_set           = {
    status_colors = STATUS_COLORS,
    animation = {
        layers = {
            {
                animation_speed = 0.75,
                draw_as_glow = false,
                draw_as_light = false,
                draw_as_shadow = false,
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/machines/grinders/iron-grinder-base.png",
                frame_count = 30,
                height = 192,
                line_length = 5,
                priority = "high",
                scale = 0.5 * SCALE,
                shift = { 0, -0.09375 * SCALE },
                width = 192,
                x = 0,
                y = 0
            },
            {
                animation_speed = 0.75,
                draw_as_glow = false,
                draw_as_light = false,
                draw_as_shadow = true,
                filename = "__IndustrialRevolution3Assets1__/graphics/entities/machines/assemblers/iron-shadow.png",
                height = 192,
                priority = "high",
                repeat_count = 30,
                scale = 0.5 * SCALE,
                shift = { 0.5 * SCALE, -0.09375 * SCALE },
                width = 256,
                x = 0,
                y = 0
            }
        }
    },
    working_visualisations = {
        {
            always_draw = true,
            animation = {
                blend_mode = "additive",
                draw_as_glow = true,
                draw_as_light = false,
                draw_as_shadow = false,
                filename = "__IndustrialRevolution3Assets1__/graphics/entities/machines/assemblers/assembler-glow.png",
                frame_count = 30,
                height = 128,
                line_length = 5,
                priority = "high",
                scale = 0.5 * SCALE,
                shift = { 0, -0.09375 * SCALE },
                width = 192,
                x = 0,
                y = 0
            },
            apply_tint = "status",
            light = {
                intensity = 0.4,
                shift = { 0, 0.65625 * SCALE },
                size = 3
            }
        }
    }
}
