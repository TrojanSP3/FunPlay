require("__FunPlay__/global")

local solar_panel = util.table.deepcopy(data.raw["solar-panel"]["solar-panel"])
solar_panel.name = mod_entity_solar_panel_name
solar_panel.minable.result = mod_item_solar_panel_name
solar_panel.production = "6MW" --"60kW"
solar_panel.picture.layers[1].tint=mod_solar_panel_tint
data:extend({solar_panel})
solar_panel = nil

local accumulator = util.table.deepcopy(data.raw["accumulator"]["accumulator"])
accumulator.name = mod_entity_accumulator_name
accumulator.minable.result = mod_item_accumulator_name
accumulator.energy_source.buffer_capacity = "500MJ" --"5MJ"
accumulator.energy_source.input_flow_limit = "30MW" --"300kW"
accumulator.energy_source.output_flow_limit = "30MW" --"300kW"
accumulator.picture.layers[1].tint=mod_accumulator_tint
accumulator.charge_animation.layers[1].layers[1].tint=mod_accumulator_tint
accumulator.discharge_animation.layers[1].layers[1].tint=mod_accumulator_tint
data:extend({accumulator})
accumulator = nil
