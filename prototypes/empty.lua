require("__FunPlay__/global")

--[[
--entity
local  = util.table.deepcopy(data.raw[""][""])
.name = mod_entity__name
.minable.result = mod_item__name
data:extend({})
 = nil

--item
local  = util.table.deepcopy(data.raw["item"][""])
.name         =mod_item__name
.place_result =mod_entity__name
.subgroup     =
.order        =""
.stack_size = 100
data:extend({})
=nil

--recipe
data:extend(
{
    {
        type = "recipe",
        name    = mod_recipe__name,
        result  = mod_item__name,
        ingredients =
        {
            {"", 1},
        },
        energy_required = 100
        
    },
}
)
--]]
