local entity = data.raw["assembling-machine"]["big-crusher"]
if not entity then return end

local SCALE = 4 / 3

if settings.startup["IR3-big-crusher-size"].value == "3x3" then
    entity.collision_box     = { { -1.4, -1.4 }, { 1.4, 1.4 } }
    entity.selection_box     = { { -1.5, -1.5 }, { 1.5, 1.5 } }
    entity.circuit_connector = table.deepcopy(data.raw["assembling-machine"]["assembling-machine-2"].circuit_connector)
    SCALE                    = 3 / 3
end

entity.icon                   = "__IndustrialRevolution3Assets1__/graphics/icons/64/steel-grinder.png"

entity.corpse                 = "big-remnants"
entity.dying_explosion        = "big-crusher-explosion"

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
        probability = 0.10007436929120344,
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
        probability = 0.036612574130928088,
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
        particle_name = "gold-particle",
        probability = 0.02440838275395206,
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
        particle_name = "steel-particle",
        probability = 0.36368490303388565,
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
        probability = 0.034171735855532881,
        repeat_count = 1,
        speed_from_center = 0.02,
        speed_from_center_deviation = 0.01,
        type = "create-particle"
    }
}

entity.integration_patch      = nil

entity.graphics_set           = {
    status_colors = STATUS_COLORS,
    animation = {
        layers = {
            {
                animation_speed = 0.375,
                draw_as_glow = false,
                draw_as_light = false,
                draw_as_shadow = false,
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/machines/grinders/steel-grinder-base.png",
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
                animation_speed = 0.375,
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
                animation_speed = 0.375,
                draw_as_glow = false,
                draw_as_light = false,
                draw_as_shadow = false,
                filename =
                "__IndustrialRevolution3Assets1__/graphics/entities/machines/assemblers/steel-indicator-3-fan.png",
                frame_count = 30,
                height = 64,
                line_length = 5,
                priority = "high",
                scale = 0.5 * SCALE,
                shift = { 0, 0.90625 * SCALE },
                width = 64,
                x = 0,
                y = 0
            }
        },
        {
            always_draw = true,
            animation = {
                animation_speed = 0.375,
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
