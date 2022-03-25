require("__FunPlay__/global")

data:extend(
{
    {
        type = "recipe",
        name    = mod_recipe_slasher_spawner_name,
        result  = mod_item_slasher_spawner_name,
        category = "crafting-with-fluid",
        ingredients =
        {
            {type="fluid", name="water", amount=250},
            {type="item", name="wood", amount=100},
            {type="item", name="stone", amount=100},
            {type="item", name="coal", amount=100},
        },
        energy_required = 100
        
    },    
    {
        type = "recipe",
        name    = mod_recipe_gunner_spawner_name,
        result  = mod_item_gunner_spawner_name,
        category = "crafting-with-fluid",
        ingredients =
        {
            {type="fluid", name="water", amount=250},
            {type="item", name="steel-plate", amount=100},
            {type="item", name="iron-gear-wheel", amount=100},
            {type="item", name="firearm-magazine", amount=100},
        },
        energy_required = 100
        
    },
}
)
--]]
