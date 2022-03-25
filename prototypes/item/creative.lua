require("__FunPlay__/global")

local infinity_chest = util.table.deepcopy(data.raw["item"]["infinity-chest"])
infinity_chest.name         =mod_item_infinity_chest_name
infinity_chest.place_result =mod_entity_infinity_chest_name
infinity_chest.subgroup     =mod_subgroup_creative_name
infinity_chest.order        ="a"
infinity_chest.stack_size = 100
infinity_chest.flags = nil
data:extend({infinity_chest})
infinity_chest=nil

local infinity_pipe = util.table.deepcopy(data.raw["item"]["infinity-pipe"])
infinity_pipe.name         =mod_item_infinity_pipe_name
infinity_pipe.place_result =mod_entity_infinity_pipe_name
infinity_pipe.subgroup     =mod_subgroup_creative_name
infinity_pipe.order        ="b"
infinity_pipe.stack_size = 100
infinity_pipe.flags = nil
data:extend({infinity_pipe})
infinity_pipe=nil

local infinity_energy = util.table.deepcopy(data.raw["item"]["electric-energy-interface"])
infinity_energy.name         =mod_item_infinity_energy_name
infinity_energy.place_result =mod_entity_infinity_energy_name
infinity_energy.subgroup     =mod_subgroup_creative_name
infinity_energy.order        ="c"
infinity_energy.stack_size = 100
infinity_energy.flags = nil
data:extend({infinity_energy})
infinity_energy=nil