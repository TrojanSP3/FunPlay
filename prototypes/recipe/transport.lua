require("__FunPlay__/global")

data:extend(
{
    {
        type = "recipe",
        name    = mod_recipe_electric_inserter_name,
        result  = mod_item_electric_inserter_name,
        ingredients =
        {
            {"electronic-circuit", 10},
            {"iron-gear-wheel", 10},
            {"iron-plate", 10}
        },
        energy_required = 100
        
    },
    {
        type = "recipe",
        name    = mod_recipe_electric_stack_inserter_name,
        result  = mod_item_electric_stack_inserter_name,
        ingredients =
        {
            {mod_item_electric_inserter_name, 1},
            {"electronic-circuit", 10},
            {"advanced-circuit", 10}
        },
        energy_required = 100,  
    },
    {
        type = "recipe",
        name    = mod_recipe_electric_pole_name,
        result  = mod_item_electric_pole_name,
        ingredients =
        {
            {"iron-stick", 40},
            {"steel-plate", 20},
            {"copper-plate", 20}
        },
        energy_required = 100,  
    },
    {
        type = "recipe",
        name    = mod_recipe_large_roboport_name,
        result  = mod_item_large_roboport_name,
        ingredients =
        {
            {"steel-plate", 300},
            {"iron-gear-wheel", 300},
            {"advanced-circuit", 300}
        },
        energy_required = 100,  
    },
}
)

local loader = data.raw["recipe"]["loader"]
loader.enabled=true
loader.hidden=false
loader = nil

local fast_loader = data.raw["recipe"]["fast-loader"]
fast_loader.enabled=true
fast_loader.hidden=false
fast_loader = nil

local express_loader = data.raw["recipe"]["express-loader"]
express_loader.enabled=true
express_loader.hidden=false
express_loader = nil