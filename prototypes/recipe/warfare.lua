require("__FunPlay__/global")

data:extend(
{
    {
        type = "recipe",
        name    = mod_recipe_unbreakable_wall_name,
        result  = mod_item_unbreakable_wall_name,
        ingredients =
        {
            {"stone", 1000},
        },
        energy_required = 100
    },
    {
        type = "recipe",
        name    = mod_recipe_compacted_grenade_name,
        result  = mod_item_compacted_grenade_name,
        ingredients =
        {
            {"iron-plate", 20}, --5
            {"coal", 40} --10
        },
        energy_required = 100
    },
    {
        type = "recipe",
        name    = mod_recipe_compacted_cluster_grenade_name,
        result  = mod_item_compacted_cluster_grenade_name,
        ingredients =
        {
            {mod_item_compacted_grenade_name, 10},
            {"explosives", 10}, --5
            {"steel-plate", 10} --5
        },
        energy_required = 100
    },
    {
        type = "recipe",
        name    = mod_recipe_nuke_landmine_name,
        result  = mod_item_nuke_landmine_name,
        ingredients =
        {
            {"steel-plate", 5},
            {"explosives", 20},
            {"uranium-235", 50}
        },
        energy_required = 100
    },
    {
        type = "recipe",
        name    = mod_recipe_super_power_armor_name,
        result  = mod_item_super_power_armor_name,
        ingredients =
        {
            {"power-armor-mk2", 1},
            {mod_item_upgrade_module_name, 5},
            {mod_item_generation_module_name, 5},
        },
        energy_required = 100
    },
    {
        type = "recipe",
        name    = mod_recipe_infinity_gun_turret_1_name,
        result  = mod_item_infinity_gun_turret_1_name,
        ingredients =
        {
            {"iron-gear-wheel", 100},
            {"copper-plate", 100},
            {"iron-plate", 200},
            {"firearm-magazine", 200}
        },
        energy_required = 100
    },
    {
        type = "recipe",
        name    = mod_recipe_infinity_gun_turret_2_name,
        result  = mod_item_infinity_gun_turret_2_name,
        ingredients =
        {
            {mod_item_infinity_gun_turret_1_name, 1},
            {"piercing-rounds-magazine", 200},
        },
        energy_required = 100 
    },
    {
        type = "recipe",
        name    = mod_recipe_infinity_gun_turret_3_name,
        result  = mod_item_infinity_gun_turret_3_name,
        ingredients =
        {
            {mod_item_infinity_gun_turret_2_name, 1},
            {"uranium-rounds-magazine", 200},
        },
        energy_required = 100
    },
    {
        type = "recipe",
        name    = mod_recipe_long_range_laser_name,
        result  = mod_item_long_range_laser_name,
        ingredients =
        {
            {"steel-plate", 200},
            {"electronic-circuit", 300},
            {"battery", 120}
        },
        energy_required = 100
    },
    {
        type = "recipe",
        name    = mod_recipe_power_laser_name,
        result  = mod_item_power_laser_name,
        ingredients =
        {
            {"steel-plate", 200},
            {"electronic-circuit", 200},
            {"battery", 180}
        },
        energy_required = 100
    },
    {
        type = "recipe",
        name    = mod_recipe_overclocked_radar_name,
        result  = mod_item_overclocked_radar_name,
        ingredients =
        {
            {"electronic-circuit", 50},
            {"iron-gear-wheel", 50},
            {"iron-plate", 100}
        },
        energy_required = 100
    },

    {
        type = "recipe",
        name    = mod_recipe_infinity_rocket_turret_1_name,
        result  = mod_item_infinity_rocket_turret_1_name,
        ingredients =
        {
            {"iron-gear-wheel", 100},
            {"copper-plate", 100},
            {"iron-plate", 200},
            {"rocket", 200}
        },
        energy_required = 100
    },
    {
        type = "recipe",
        name    = mod_recipe_infinity_rocket_turret_2_name,
        result  = mod_item_infinity_rocket_turret_2_name,
        ingredients =
        {
            {mod_item_infinity_rocket_turret_1_name, 1},
            {"explosive-rocket", 200},
        },
        energy_required = 100
    },
    {
        type = "recipe",
        name    = mod_recipe_infinity_rocket_turret_3_name,
        result  = mod_item_infinity_rocket_turret_3_name,
        ingredients =
        {
            {mod_item_infinity_rocket_turret_2_name, 1},
            {"atomic-bomb", 10},
        },
        energy_required = 100
    },
    {
        type = "recipe",
        name    = mod_recipe_hardened_wall_name,
        result  = mod_item_hardened_wall_name,
        ingredients =
        {
            {"stone-brick", 50},
        },
        energy_required = 100
    },
}
)
