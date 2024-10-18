local PM = require("__periodic-madness__/library")
data:extend({

  {
    type = "item",
    name = "pm-caesium-rubidium-alum",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/caesium-rubidium-alum.png",
    subgroup = "pm-rubidium-am",
    order = "a",
    stack_size = 400
  },
  {
    type = "item",
    name = "pm-30-rubidium-alum",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/30-rubidium-alum.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/ores/30-rubidium-alum.png", size = 64, scale = 0.25},
      {filename = "__periodic-madness__/graphics/icons/ores/31-rubidium-alum.png", size = 64, scale = 0.25}
    },
    subgroup = "pm-rubidium-am",
    order = "b",
    stack_size = 350
  }, --sounds like a skill issue ngl
  {
    type = "item",
    name = "pm-50-rubidium-alum",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/50-rubidium-alum.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/ores/50-rubidium-alum.png", size = 64, scale = 0.25},
      {filename = "__periodic-madness__/graphics/icons/ores/51-rubidium-alum.png", size = 64, scale = 0.25}
    },
    subgroup = "pm-rubidium-am",
    order = "c",
    stack_size = 300
  },
  {
    type = "item",
    name = "pm-70-rubidium-alum",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/70-rubidium-alum.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/ores/70-rubidium-alum.png", size = 64, scale = 0.25},
      {filename = "__periodic-madness__/graphics/icons/ores/71-rubidium-alum.png", size = 64, scale = 0.25}
    },
    subgroup = "pm-rubidium-am",
    order = "d",
    stack_size = 250
  },
  {
    type = "item",
    name = "pm-rubidium-alum",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/rubidium-alum.png",
    subgroup = "pm-rubidium-am",
    order = "b",
    stack_size = 200
  },

  {
    type = "recipe",
    name = "pm-pollucite-mixing",
    enabled = false,
    category = "pm-moltening",
    subgroup = "pm-rubidium-am",
    order = "a",
    energy_required = 6,
    main_product = "pm-caesium-rubidium-alum",
    ingredients =
    {
      PM.ingredient("pm-pollucite", 4),
      PM.ingredient("pm-caesium", 2, "fluid"),
      PM.ingredient("pm-potassium", 4),
      PM.ingredient("pm-aluminium-plate", 6)
    },
    results =
    {
      PM.product_range("pm-caesium-rubidium-alum", 2, 5),
      PM.product_range_chance("pm-fine-pollucite-powder", 2, 4, 0.6)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-caesium-rubidium-alum-seperation",
    icon_size = 128,
    icon = "__periodic-madness__/graphics/icons/recipes/ceasium-rubidium-alum-seperation.png",
    enabled = false,
    category = "pm-crushing",
    subgroup = "pm-rubidium-am",
    order = "b",
    energy_required = 12,
    ingredients =
    {
      PM.ingredient("pm-caesium-rubidium-alum", 6)
    },
    results =
    {
      PM.product_range("pm-30-rubidium-alum", 0, 4),
      PM.product_range("pm-50-rubidium-alum", 0, 3),
      PM.product_range("pm-70-rubidium-alum", 0, 2),
      PM.product_chance("pm-rubidium-alum", 1, 0.5),
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-70-to-100-rubidium-alum",
    enabled = false,
    category = "chemistry",
    subgroup = "pm-rubidium-am",
    order = "c",
    energy_required = 4,
    ingredients =
    {
      PM.ingredient("pm-70-rubidium-alum", 2),
      PM.ingredient("pm-rubidium-alum", 1)
    },
    results =
    {
      PM.product("pm-rubidium-alum", 2)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-50-to-70-rubidium-alum",
    enabled = false,
    category = "chemistry",
    subgroup = "pm-rubidium-am",
    order = "d",
    energy_required = 4,
    ingredients =
    {
      PM.ingredient("pm-50-rubidium-alum", 2),
      PM.ingredient("pm-70-rubidium-alum", 1)
    },
    results =
    {
      PM.product("pm-70-rubidium-alum", 2)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-30-to-50-rubidium-alum",
    enabled = false,
    category = "chemistry",
    subgroup = "pm-rubidium-am",
    order = "e",
    energy_required = 4,
    ingredients =
    {
      PM.ingredient("pm-30-rubidium-alum", 2),
      PM.ingredient("pm-50-rubidium-alum", 1)
    },
    results =
    {
      PM.product("pm-50-rubidium-alum", 2)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-rubidium-alum-seperation",
    enabled = false,
    category = "pm-acids",
    subgroup = "pm-rubidium-am",
    order = "f",
    energy_required = 8,
    main_product = "pm-rubidium",
    ingredients =
    {
      PM.ingredient("pm-rubidium-alum", 3),
      PM.ingredient("sulfuric-acid", 15, "fluid")
    },
    results =
    {
      PM.product("pm-rubidium", 1),
      PM.product_range("pm-sulfur-trioxide", 2, 8, "fluid"),
      PM.product_range("pm-aluminium-plate", 0, 5),
    }
  } --[[@as data.RecipePrototype]]
})