local PM = require("__periodic-madness__/library")
data:extend({

  {
    type = "recipe",
    name = "pm-arsenopyrite-leeching",
    enabled = false,
    energy_required = 8,
    category = "pm-acids",
    subgroup = "pm-arsenic-mt",
    order = "a",
    ingredients = 
    {
      PM.ingredient("pm-metalloid-ore", 16), --yipee
      PM.ingredient("pm-chromic-acid", 20, "fluid")
    },
    results = 
    {
      PM.product("pm-arsenopyrite", 4)
    }
  },
  {
    type = "recipe",
    name = "pm-arsenopyrite-sublimation",
    enabled = false,
    energy_required = 9,
    category = "pm-moltening",
    subgroup = "pm-arsenic-mt",
    order = "b",
    ingredients = 
    {
      PM.ingredient("pm-arsenopyrite", 3),
      PM.ingredient("pm-oxygen-gas", 20, "fluid"),
      PM.ingredient("pm-vanadium-oxide-catalyst", 2)
    },
    results = 
    {
      PM.product_range("pm-impure-arsenic", 2, 6),
      PM.product_range("pm-catalyst-container", 1, 2),
    }
  },
  {
    type = "recipe",
    name = "pm-arsenic-purifying",
    enabled = false,
    energy_required = 9,
    category = "pm-moltening",
    subgroup = "pm-arsenic-mt",
    order = "c",
    ingredients = 
    {
      PM.ingredient("pm-impure-arsenic", 4),
      PM.ingredient("pm-molten-lead", 5, "fluid"),
    },
    results = 
    {
      PM.product("pm-arseinc-oxide", 6),
      PM.product_range("pm-ferrum", 2, 4),
      PM.product_range("pm-impure-lead-ore", 1, 5),

    }
  },
  {
    type = "recipe",
    name = "pm-arsine",
    enabled = false,
    energy_required = 4,
    category = "pm-washing",
    subgroup = "pm-arsenic-mt",
    order = "d",
    ingredients = 
    {
      PM.ingredient("pm-arsenic-oxide", 3),
      PM.ingredient("pm-zinc-plate", 12), --catalyst for hard mode
      PM.ingredient("pm-hydrochloric-acid", 24, "fluid"),
    },
    results = 
    {
      PM.product("pm-arsine", 5, "fluid"),
      PM.product_range("water", 18, 20, "fluid"),
    }
  },
  {
    type = "recipe",
    name = "pm-arsine-seperation",
    enabled = false,
    energy_required = 8,
    category = "chemistry",
    subgroup = "pm-arsenic-mt",
    order = "e",
    ingredients =
    {
      PM.ingredient("pm-arsine", 5, "fluid"),
    },
    results = 
    {
      PM.product_range("pm-arsenic", 6, 10),
      PM.product("water", 30, "fluid"),
    }
  }

})