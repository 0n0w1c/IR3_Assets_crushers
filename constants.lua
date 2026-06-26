STATUS_COLORS = {
    disabled = { a = 1, b = 0.25, g = 0.25, r = 1 },
    full_output = { a = 1, b = 0.25, g = 0.625, r = 1 },
    idle = { a = 1, b = 1, g = 0.625, r = 0.25 },
    insufficient_input = { a = 1, b = 0.25, g = 0.625, r = 1 },
    low_power = { a = 1, b = 0.25, g = 0.25, r = 1 },
    no_minable_resources = { a = 1, b = 1, g = 0.625, r = 0.25 },
    no_power = { 0, 0, 0, 0 },
    working = { a = 1, b = 0.25, g = 1, r = 0.25 }
}

PIPE_COVERS = {
    east = {
        layers = {
            {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-iron-ce.png",
                height = 120,
                priority = "extra-high",
                scale = 0.5,
                shift = { -1, 0 },
                width = 180
            },
            {
                draw_as_shadow = true,
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-shadow-ce.png",
                height = 120,
                priority = "extra-high",
                scale = 0.5,
                shift = { 0, 0 },
                width = 180
            }
        }
    },
    north = {
        layers = {
            {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-iron-cn.png",
                height = 120,
                priority = "extra-high",
                scale = 0.5,
                shift = { 0, 1 },
                width = 180
            },
            {
                draw_as_shadow = true,
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-shadow-cn.png",
                height = 120,
                priority = "extra-high",
                scale = 0.5,
                shift = { 0, 0 },
                width = 180
            }
        }
    },
    south = {
        layers = {
            {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-iron-cs.png",
                height = 120,
                priority = "extra-high",
                scale = 0.5,
                shift = { 0, -1 },
                width = 180
            },
            {
                draw_as_shadow = true,
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-shadow-cs.png",
                height = 120,
                priority = "extra-high",
                scale = 0.5,
                shift = { 0, 0 },
                width = 180
            }
        }
    },
    west = {
        layers = {
            {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-iron-cw.png",
                height = 120,
                priority = "extra-high",
                scale = 0.5,
                shift = { 1, 0 },
                width = 180
            },
            {
                draw_as_shadow = true,
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-shadow-cw.png",
                height = 120,
                priority = "extra-high",
                scale = 0.5,
                shift = { 0, 0 },
                width = 180
            }
        }
    }
}

PIPE_PICTURES_IRON = {
    north = {
        filename =
        "__IndustrialRevolution3Assets1__/graphics/entities/machines/assemblers/standard-pipe-pictures-iron-north.png",
        height = 238,
        width = 238,
        scale = 0.5,
        shift = { 0, 2 },
        priority = "high",
    },

    east  = {
        filename =
        "__IndustrialRevolution3Assets1__/graphics/entities/machines/assemblers/standard-pipe-pictures-iron-east.png",
        height = 238,
        width = 238,
        scale = 0.5,
        shift = { -2, 0 },
        priority = "high",
    },

    south = {
        layers = {
            {
                filename =
                "__IndustrialRevolution3Assets1__/graphics/entities/machines/assemblers/standard-pipe-pictures-iron-south.png",
                height = 238,
                width = 238,
                scale = 0.5,
                shift = { 0, -2 },
                priority = "high",
            },
            {
                filename = "__IndustrialRevolution3Assets2__/graphics/entities/pipes/pipe-shadow-v.png",
                height = 120,
                width = 180,
                scale = 0.5,
                shift = { 0, -1 },
                priority = "high",
                draw_as_shadow = true,
            }
        }
    },

    west  = {
        filename =
        "__IndustrialRevolution3Assets1__/graphics/entities/machines/assemblers/standard-pipe-pictures-iron-west.png",
        height = 238,
        width = 238,
        scale = 0.5,
        shift = { 2, 0 },
        priority = "high",
    }
}
