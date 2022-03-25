require("__FunPlay__/global")

data:extend(
{
    {
        type = "recipe",
        name    = mod_recipe_solar_panel_name,
        result  = mod_item_solar_panel_name,
        ingredients =
        {
            {"steel-plate", 50},
            {"electronic-circuit", 150},
            {"copper-plate", 50}
        },
        energy_required = 100,
        
    },
    {
        type = "recipe",
        name    = mod_recipe_accumulator_name,
        result  = mod_item_accumulator_name,
        ingredients =
        {
            {"iron-plate", 20},
            {"battery", 50}
        },
        energy_required = 100   
    },

}
)
