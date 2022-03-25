require("__FunPlay__/global")

local infinity_chest = util.table.deepcopy(data.raw["infinity-container"]["infinity-chest"])
infinity_chest.name = mod_entity_infinity_chest_name
infinity_chest.minable.result = mod_item_infinity_chest_name
infinity_chest.resistances = nil
infinity_chest.max_health = 400
data:extend({infinity_chest})
infinity_chest = nil

local infinity_pipe = util.table.deepcopy(data.raw["infinity-pipe"]["infinity-pipe"])
infinity_pipe.name = mod_entity_infinity_pipe_name
infinity_pipe.minable.result = mod_item_infinity_pipe_name
infinity_pipe.resistances = nil
infinity_pipe.max_health = 400
data:extend({infinity_pipe})
infinity_pipe=nil

local infinity_energy = util.table.deepcopy(data.raw["electric-energy-interface"]["electric-energy-interface"])
infinity_energy.name = mod_entity_infinity_energy_name
infinity_energy.minable.result = mod_item_infinity_energy_name
infinity_energy.resistances = nil
infinity_energy.max_health = 400
data:extend({infinity_energy})
infinity_energy=nil