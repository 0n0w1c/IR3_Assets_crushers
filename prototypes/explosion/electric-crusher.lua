data:extend({
    {
        type = "explosion",
        name = "electric-crusher-explosion",
        hidden_in_factoriopedia = true,
        animations = {
            {
                animation_speed = 0.5,
                draw_as_glow = true,
                filename = "__base__/graphics/entity/big-explosion/big-explosion.png",
                flags = { "always-compressed" },
                frame_count = 47,
                height = 245,
                line_length = 6,
                shift = { 0.1875, -0.75 },
                width = 197
            }
        },
        created_effect = {
            action_delivery = {
                target_effects = {
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
                            { -0.34, -0.34 },
                            { 0.34,  0.34 }
                        },
                        particle_name = "trailing-copper-particle",
                        probability = 1,
                        repeat_count = 20,
                        speed_from_center = 0.06,
                        speed_from_center_deviation = 0.03,
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
                            { -0.34, -0.34 },
                            { 0.34,  0.34 }
                        },
                        particle_name = "trailing-glass-particle",
                        probability = 1,
                        repeat_count = 11,
                        speed_from_center = 0.06,
                        speed_from_center_deviation = 0.03,
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
                            { -0.34, -0.34 },
                            { 0.34,  0.34 }
                        },
                        particle_name = "trailing-iron-particle",
                        probability = 1,
                        repeat_count = 98,
                        speed_from_center = 0.06,
                        speed_from_center_deviation = 0.03,
                        type = "create-particle"
                    }
                },
                type = "instant"
            },
            type = "direct"
        },
        flags = { "not-on-map" },
        icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/iron-grinder.png",
        icon_mipmaps = 4,
        icon_size = 64,
        localised_name = {
            "entity-name.ir-explosion",
            {
                "entity-name.electric-crusher"
            }
        },
        sound = {
            aggregation = {
                max_count = 1,
                remove = true
            },
            audible_distance_modifier = 1.95,
            game_controller_vibration_data = {
                duration = 160,
                low_frequency_vibration_intensity = 0.9,
                play_for = "everything"
            },
            switch_vibration_data = {
                filename = "__base__/sound/fight/large-explosion.bnvib",
                gain = 0.6,
                play_for = "everything"
            },
            variations = {
                {
                    filename = "__base__/sound/fight/large-explosion-1.ogg",
                    volume = 1
                },
                {
                    filename = "__base__/sound/fight/large-explosion-2.ogg",
                    volume = 1
                }
            }
        }
    }
})
