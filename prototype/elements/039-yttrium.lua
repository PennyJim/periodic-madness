local PM = require("__periodic-madness__/library")
data:extend({
  {
    type = "item",
    name = "pm-mixed-bastnasite",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/bismite-1.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/bismite-1.png", size = 64, scale = 0.125 },
      { filename = "__periodic-madness__/graphics/icons/ores/bismite-2.png", size = 64, scale = 0.125 },
    },
    subgroup = "pm-yttrium-tm",
    order = "a",
    stack_size = 400
  },
  {
    type = "item",
    name = "pm-bastnasite-Y",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/bismite-1.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/bismite-1.png", size = 64, scale = 0.125 },
      { filename = "__periodic-madness__/graphics/icons/ores/bismite-2.png", size = 64, scale = 0.125 },
    },
    subgroup = "pm-yttrium-tm",
    order = "b",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-bastnasite-C",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/bismite-1.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/bismite-1.png", size = 64, scale = 0.125 },
      { filename = "__periodic-madness__/graphics/icons/ores/bismite-2.png", size = 64, scale = 0.125 },
    },
    subgroup = "pm-yttrium-tm",
    order = "c",
    stack_size = 200
  },
  {
    type = "item",
    name = "pm-yttrium-oxide",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/bismite-1.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/bismite-1.png", size = 64, scale = 0.125 },
      { filename = "__periodic-madness__/graphics/icons/ores/bismite-2.png", size = 64, scale = 0.125 },
    },
    subgroup = "pm-yttrium-tm",
    order = "d",
    stack_size = 200
  },

  {
    type = "recipe",
    name = "pm-basic-bastnasite",
    enabled = false,
    energy_required = 24,
    category = "pm-acids",
    subgroup = "pm-yttrium-tm",
    order = "a",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-transition-metals-ore", 25),
      PM.ingredient("pm-chromic-acid", 20, "fluid")
    },
    results =
    {
      PM.product_range("pm-mixed-bastnasite", 6, 2 )
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-mixed-bastnasite-seperation",
    enabled = false,
    energy_required = 6,
    category = "pm-crushing",
    subgroup = "pm-yttrium-tm",
    order = "b",
    main_product = "pm-bastnasite-Y",
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-mixed-bastnasite", 6),
      PM.ingredient("pm-ion-exchange-beads", 9)
    },
    results =
    {
      PM.product_chance("pm-bastnasite-Y", 2, 0.5),
      PM.product_range_chance("pm-bastnasite-C", 2, 4, 0.5)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-bastnasite-Y-seperation",
    enabled = false,
    energy_required = 16,
    category = "chemistry",
    subgroup = "pm-yttrium-tm",
    order = "c",
    main_product = "pm-yttrium-oxide",
    ingredients =
    {
      PM.ingredient("pm-bastnasite-Y", 6),
      PM.ingredient("sulfuric-acid", 20, "fluid"),
      PM.ingredient("pm-vanadium-oxide-catalyst", 4)
    },
    results =
    {
      PM.product_range("pm-yttrium-oxide", 1, 3),
      PM.product_range("pm-catalyst-container", 2, 4),
      PM.product_chance("pm-flourine", 5, 0.456)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-bastnasite-C-seperation",
    enabled = false,
    energy_required = 16,
    category = "chemistry",
    subgroup = "pm-yttrium-tm",
    order = "d",
    main_product = "pm-yttrium-oxide",
    ingredients =
    {
      PM.ingredient("pm-bastnasite-C", 6),
      PM.ingredient("sulfuric-acid", 20, "fluid"),
      PM.ingredient("pm-vanadium-oxide-catalyst", 4)
    },
    results =
    {
      PM.product_range("pm-yttrium-oxide", 0, 1),
      PM.product_range("pm-catalyst-container", 2, 4),
      PM.product_range("pm-carbon-trioxide", 8, 10, "fluid")
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-yttrium-fluoride",
    enabled = false,
    energy_required = 8,
    category = "chemistry",
    subgroup = "pm-yttrium-tm",
    order = "f",
    main_product = "pm-aqueous-yttrium-fluoride",
    ingredients =
    {
      PM.ingredient("pm-yttrium-oxide", 2),
      PM.ingredient("pm-hydrogen-flouride", 10, "fluid")
    },
    results =
    {
      PM.product("pm-aqueous-yttrium-fluoride", 5, "fluid"),
      PM.product("water", 10, "fluid")
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-yttrium",
    enabled = false,
    energy_required = 8,
    category = "pm-washing",
    subgroup = "pm-yttrium-tm",
    order = "g",
    ingredients =
    {
      PM.ingredient("pm-aqueous-yttrium-fluoride", 5, "fluid"),
      PM.ingredient("pm-ammonium-chloride", 2)
    },
    results =
    {
      PM.product("pm-yttrium-ore", 5)
    }
  } --[[@as data.RecipePrototype]]
})
