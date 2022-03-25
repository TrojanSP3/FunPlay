require("__FunPlay__/global")

local mining_drill = util.table.deepcopy(data.raw["mining-drill"]["electric-mining-drill"])
mining_drill.name = mod_entity_electric_mining_drill_name
mining_drill.minable.result = mod_item_electric_mining_drill_name
mining_drill.mining_speed = 50 --0.5
mining_drill.energy_source.emissions_per_minute = 100 --10
mining_drill.energy_usage = "900kW" --"90kW"
mining_drill.resource_searching_radius = 4.49 --2.49
mining_drill.graphics_set.animation.north.layers[1].tint   = mod_electric_mining_drill_tint
mining_drill.graphics_set.animation.east.layers[1].tint    = mod_electric_mining_drill_tint
mining_drill.graphics_set.animation.south.layers[1].tint   = mod_electric_mining_drill_tint
mining_drill.graphics_set.animation.west.layers[1].tint    = mod_electric_mining_drill_tint
mining_drill.graphics_set.animation.north.layers[2].tint   = mod_electric_mining_drill_tint
mining_drill.graphics_set.animation.east.layers[2].tint    = mod_electric_mining_drill_tint
mining_drill.graphics_set.animation.south.layers[2].tint   = mod_electric_mining_drill_tint
mining_drill.graphics_set.animation.west.layers[2].tint    = mod_electric_mining_drill_tint
mining_drill.graphics_set.working_visualisations[3].north_animation.layers[1].tint   = mod_electric_mining_drill_tint
mining_drill.graphics_set.working_visualisations[3].east_animation.layers[1].tint    = mod_electric_mining_drill_tint
mining_drill.graphics_set.working_visualisations[3].south_animation.layers[1].tint   = mod_electric_mining_drill_tint
mining_drill.graphics_set.working_visualisations[3].west_animation.layers[1].tint    = mod_electric_mining_drill_tint
mining_drill.wet_mining_graphics_set.animation.north.layers[1].tint   = mod_electric_mining_drill_tint
mining_drill.wet_mining_graphics_set.animation.east.layers[1].tint    = mod_electric_mining_drill_tint
mining_drill.wet_mining_graphics_set.animation.south.layers[1].tint   = mod_electric_mining_drill_tint
mining_drill.wet_mining_graphics_set.animation.west.layers[1].tint    = mod_electric_mining_drill_tint
mining_drill.wet_mining_graphics_set.animation.north.layers[2].tint   = mod_electric_mining_drill_tint
mining_drill.wet_mining_graphics_set.animation.east.layers[2].tint    = mod_electric_mining_drill_tint
mining_drill.wet_mining_graphics_set.animation.south.layers[2].tint   = mod_electric_mining_drill_tint
mining_drill.wet_mining_graphics_set.animation.west.layers[2].tint    = mod_electric_mining_drill_tint
mining_drill.wet_mining_graphics_set.working_visualisations[3].north_animation.layers[1].tint   = mod_electric_mining_drill_tint
mining_drill.wet_mining_graphics_set.working_visualisations[3].east_animation.layers[1].tint    = mod_electric_mining_drill_tint
mining_drill.wet_mining_graphics_set.working_visualisations[3].south_animation.layers[1].tint   = mod_electric_mining_drill_tint
mining_drill.wet_mining_graphics_set.working_visualisations[3].west_animation.layers[1].tint    = mod_electric_mining_drill_tint

data:extend({mining_drill})
mining_drill = nil

local pumpjack = util.table.deepcopy(data.raw["mining-drill"]["pumpjack"])
pumpjack.name = mod_entity_pumpjack_name
pumpjack.minable.result = mod_item_pumpjack_name
pumpjack.mining_speed = 100 --1
pumpjack.energy_source.emissions_per_minute = 100 --10
pumpjack.energy_usage = "900kW" --"90kW"
pumpjack.base_picture.sheets[1].tint = mod_pumpjack_tint
pumpjack.animations.north.layers[1].tint = mod_pumpjack_tint
data:extend({pumpjack})
pumpjack = nil
