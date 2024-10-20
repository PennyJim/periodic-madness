data:extend({

  {
    type = "corpse",
    name = "pm-filter-long-handed-inserter-remnants",
    icon = "__base__/graphics/icons/long-handed-inserter.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = { "placeable-neutral", "not-on-map" },
    subgroup = "inserter-remnants",
    order = "a-c-a",
    selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
    tile_width = 1,
    tile_height = 1,
    selectable_in_game = false,
    time_before_removed = 60 * 60 * 15,     -- 15 minutes
    final_render_layer = "remnants",
    animation = make_rotated_animation_variations_from_sheet(4,
      {
        filename =
        "__periodic-madness__/graphics/entities/buildings/filter-long-handed-inserter/remnants/filter-long-handed-inserter-remnants.png",
        line_length = 1,
        width = 134,
        height = 94,
        frame_count = 1,
        variation_count = 1,
        axially_symmetrical = false,
        direction_count = 1,
        shift = util.by_pixel(3.5, -2),
        scale = 0.5
      }
    )
  },
  {
    type = "corpse",
    name = "pm-solar-panel-2-remnants",
    icon = "__base__/graphics/icons/solar-panel.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = { "placeable-neutral", "not-on-map" },
    subgroup = "energy-remnants",
    order = "a-c-a",
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    tile_width = 3,
    tile_height = 3,
    selectable_in_game = false,
    time_before_removed = 60 * 60 * 15,     -- 15 minutes
    final_render_layer = "remnants",
    remove_on_tile_placement = false,
    animation = make_rotated_animation_variations_from_sheet(2,
      {
        filename =
        "__periodic-madness__/graphics/entities/buildings/solar-panel-2/remnants/solar-panel-remnants.png",
        line_length = 1,
        width = 290,
        height = 282,
        frame_count = 1,
        variation_count = 1,
        axially_symmetrical = false,
        direction_count = 1,
        shift = util.by_pixel(3.5, 0),
        scale = 0.5
      }
    )
  },
  {
    type = "corpse",
    name = "pm-lithium-construction-robot-remnants",
    icon = "__base__/graphics/icons/construction-robot.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = { "placeable-neutral", "not-on-map", "placeable-off-grid" },
    selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
    tile_width = 3,
    tile_height = 3,
    selectable_in_game = false,
    subgroup = "remnants",
    order = "d[remnants]-a[generic]-a[small]",
    time_before_removed = 60 * 60 * 15,     -- 15 minutes
    final_render_layer = "remnants",
    remove_on_tile_placement = false,
    animation = make_rotated_animation_variations_from_sheet(3,
      {
        filename =
        "__periodic-madness__/graphics/entities/buildings/lithium-construction-robots/remnants/construction-robot-remnants.png",
        line_length = 1,
        width = 120,
        height = 114,
        frame_count = 1,
        variation_count = 1,
        axially_symmetrical = false,
        direction_count = 1,
        shift = util.by_pixel(2, 1),
        scale = 0.5
      }
    )
  },
  {
    type = "corpse",
    name = "pm-lithium-logistic-robot-remnants",
    icon = "__base__/graphics/icons/logistic-robot.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = { "placeable-neutral", "not-on-map", "placeable-off-grid" },
    selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
    tile_width = 3,
    tile_height = 3,
    selectable_in_game = false,
    subgroup = "remnants",
    order = "d[remnants]-a[generic]-a[small]",
    time_before_removed = 60 * 60 * 15,     -- 15 minutes
    final_render_layer = "remnants",
    remove_on_tile_placement = false,
    animation = make_rotated_animation_variations_from_sheet(3,
      {
        filename =
        "__periodic-madness__/graphics/entities/buildings/lithium-logistic-robots/remnants/logistic-robot-remnants.png",
        line_length = 1,
        width = 116,
        height = 114,
        frame_count = 1,
        variation_count = 1,
        axially_symmetrical = false,
        direction_count = 1,
        shift = util.by_pixel(1, 1),
        scale = 0.5
      }
    )
  },
} --[[@as data.CorpsePrototype[] ]])
