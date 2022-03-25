require("__FunPlay__/global")

data:extend(
{
    {
        type = "recipe",
        name    = mod_recipe_electric_mining_drill_name,
        result  = mod_item_electric_mining_drill_name,
        ingredients =
        {
            {"electronic-circuit", 30},
            {"iron-gear-wheel", 50},
            {"iron-plate", 100}
        },
        energy_required = 100,
    },
    {
        type = "recipe",
        name    = mod_recipe_pumpjack_name,
        result  = mod_item_pumpjack_name,
        ingredients =
        {
            {"steel-plate", 50},
            {"iron-gear-wheel", 100},
            {"electronic-circuit", 50},
            {"pipe", 100}
        },
        energy_required = 100,
    },

}
)
