require("__FunPlay__/global")

data:extend(
{
    {
        type = "recipe",
        name    = mod_recipe_stone_furnace_name,
        result  = mod_item_stone_furnace_name,
        ingredients =
        {
            {"stone", 50},
        },
        energy_required = 100
        
    },
    {
        type = "recipe",
        name    = mod_recipe_electric_furnace_name,
        result  = mod_item_electric_furnace_name,
        ingredients = 
        {
            {"steel-plate", 100}, 
            {"advanced-circuit", 50}, 
            {"stone-brick", 100}
        },
        energy_required = 100
        
    },
    {
        type = "recipe",
        name    = mod_recipe_assemble_a_name,
        result  = mod_item_assemble_a_name,
        ingredients =
        {
            {"electronic-circuit", 30},
            {"iron-gear-wheel", 50},
            {"iron-plate", 90}
        },
        energy_required = 100
        
    },
    {
        type = "recipe",
        name    = mod_recipe_assemble_b_name,
        result  = mod_item_assemble_b_name,
        ingredients =
        {
            {mod_item_assemble_a_name, 1},
            {"steel-plate", 20},
            {"electronic-circuit", 30},
            {"iron-gear-wheel", 50},
        },
        energy_required = 100
        
    },
    {
        type = "recipe",
        name    = mod_recipe_assemble_c_name,
        result  = mod_item_assemble_c_name,
        ingredients =
        {
            {mod_item_assemble_b_name, 1},
            {"speed-module", 40},
            
        },
        energy_required = 100
        
    },
    {
        type = "recipe",
        name    = mod_recipe_oil_refinery_name,
        result  = mod_item_oil_refinery_name,
        ingredients =
        {
            {"steel-plate", 150},
            {"iron-gear-wheel", 100},
            {"stone-brick", 100},
            {"electronic-circuit", 100},
            {"pipe", 100}
        },
        energy_required = 100
        
    },
    {
        type = "recipe",
        name    = mod_recipe_chemical_plant_name,
        result  = mod_item_chemical_plant_name,
        ingredients =
        {
            {"steel-plate", 50},
            {"iron-gear-wheel", 50},
            {"electronic-circuit", 50},
            {"pipe", 50}
        },
        energy_required = 100
        
    },
    {
        type = "recipe",
        name    = mod_recipe_centrifuge_name,
        result  = mod_item_centrifuge_name,
        ingredients =
        {
            {"steel-plate", 500},
            {"iron-gear-wheel", 500},
            {"electronic-circuit", 500},
            {"pipe", 500}
        },
        energy_required = 100
        
    },
    {
        type = "recipe",
        name    = mod_recipe_lab_name,
        result  = mod_item_lab_name,
        ingredients =
        {
            {"electronic-circuit", 100},
            {"iron-gear-wheel", 100},
            {"transport-belt", 40}
        },
        energy_required = 100
        
    },

}
)
