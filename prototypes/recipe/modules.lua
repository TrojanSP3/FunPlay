require("__FunPlay__/global")

data:extend(
{
    {
        type = "recipe",
        name    = mod_recipe_compacted_beacon_name,
        result  = mod_item_compacted_beacon_name,
        ingredients =
        {
            {"electronic-circuit", 100},
            {"advanced-circuit", 100},
            {"steel-plate", 50},
            {"copper-cable", 50}
        },
        energy_required = 100
        
    },
    {
        type = "recipe",
        name    = mod_recipe_overclocked_beacon_name,
        result  = mod_item_overclocked_beacon_name,
        ingredients =
        {
            {"electronic-circuit", 200},
            {"advanced-circuit", 200},
            {"steel-plate", 100},
            {"copper-cable", 100}
        },
        energy_required = 100
        
    },
    {
        type = "recipe",
        name    = mod_recipe_pollution_module_name,
        result  = mod_item_pollution_module_name,
        ingredients =
        {
            {"stone", 100},
            {"coal", 100},
        },
        energy_required = 100
        
    },
    {
        type = "recipe",
        name    = mod_recipe_upgrade_module_name,
        result  = mod_item_upgrade_module_name,
        ingredients =
        {
            {"effectivity-module-3", 5},
            {"speed-module-3", 5},
        },
        energy_required = 100
        
    },
    {
        type = "recipe",
        name    = mod_recipe_generation_module_name,
        result  = mod_item_generation_module_name,
        ingredients =
        {
            {mod_item_upgrade_module_name, 1},
            {"productivity-module-3", 5},
        },
        energy_required = 100
        
    },
}
)
