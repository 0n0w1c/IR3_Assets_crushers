local entity = table.deepcopy(data.raw["assembling-machine"]["assembling-machine-2"])

entity.name = "mixer"
entity.localised_name = { "entity-name.mixer" }
entity.icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/iron-mixer.png"
entity.crafting_categories = { "mixing-with-fluid" }
entity.next_upgrade = nil
entity.integration_patch = nil
entity.minable = { mining_time = 0.2, result = "mixer" }

entity.corpse = "medium-remnants"
entity.dying_explosion = "mixer-explosion"

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
        probability = 0.14808108244052112,
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
        probability = 0.083698003118555402,
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
        probability = 0.67602233288063971,
        repeat_count = 1,
        speed_from_center = 0.02,
        speed_from_center_deviation = 0.01,
        type = "create-particle"
    }
}

entity.fluid_boxes =
{
    {
        production_type = "input",
        pipe_picture = PIPE_PICTURES_IRON,
        pipe_covers = PIPE_COVERS,
        volume = 1000,
        pipe_connections = { { flow_direction = "input", direction = defines.direction.north, position = { 0, -1 } } },
        secondary_draw_orders = { north = -1 }
    },
    {
        production_type = "output",
        pipe_picture = PIPE_PICTURES_IRON,
        pipe_covers = PIPE_COVERS,
        volume = 1000,
        pipe_connections = { { flow_direction = "output", direction = defines.direction.south, position = { 0, 1 } } },
        secondary_draw_orders = { north = -1 }
    }
}
entity.graphics_set = {
    status_colors = STATUS_COLORS,
    animation = {
        layers = {
            {
                animation_speed = 1,
                draw_as_glow = false,
                draw_as_light = false,
                draw_as_shadow = false,
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/machines/grinders/iron-mixer-base.png",
                frame_count = 60,
                height = 192,
                line_length = 10,
                priority = "high",
                scale = 0.5,
                shift = { 0, -0.09375 },
                width = 192,
                x = 0,
                y = 0
            },
            {
                animation_speed = 1,
                draw_as_glow = false,
                draw_as_light = false,
                draw_as_shadow = true,
                filename = "__IndustrialRevolution3Assets1__/graphics/entities/machines/assemblers/iron-shadow.png",
                height = 192,
                priority = "high",
                repeat_count = 60,
                scale = 0.5,
                shift = { 0.5, -0.09375 },
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
                scale = 0.5,
                shift = { 0, -0.09375 },
                width = 192,
                x = 0,
                y = 0
            },
            apply_tint = "status",
            light = {
                intensity = 0.4,
                shift = { 0, 0.65625 },
                size = 3
            }
        }
    },
    working_sound = {
        fade_in_ticks = 10,
        fade_out_ticks = 30,
        sound = {
            filename = "__IndustrialRevolution3Assets1__/sound/grinder.ogg",
            volume = 0.75
        }
    }
}

data:extend({ entity })
