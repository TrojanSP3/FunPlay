require("__FunPlay__/global")

local compacted_beacon = util.table.deepcopy(data.raw["beacon"]["beacon"])
compacted_beacon.name = mod_entity_compacted_beacon_name
compacted_beacon.minable.result = mod_item_compacted_beacon_name
compacted_beacon.supply_area_distance = 5 --3
compacted_beacon.energy_usage = "1500kW" --"480kW"
compacted_beacon.module_specification.module_slots=4 --2
compacted_beacon.distribution_effectivity = 0.5 --0.5
compacted_beacon.graphics_set.animation_list[1].animation.layers[1].tint = mod_compacted_beacon_tint
data:extend({compacted_beacon})
compacted_beacon = nil

local overclocked_beacon = util.table.deepcopy(data.raw["beacon"]["beacon"])
overclocked_beacon.name = mod_entity_overclocked_beacon_name
overclocked_beacon.minable.result = mod_item_overclocked_beacon_name
overclocked_beacon.supply_area_distance = 1 --3
overclocked_beacon.energy_usage = "1500kW" --"480kW"
overclocked_beacon.module_specification.module_slots=2 --2
overclocked_beacon.distribution_effectivity = 1.0 --0.5
overclocked_beacon.graphics_set.animation_list[1].animation.layers[1].tint = mod_overclocked_beacon_tint
data:extend({overclocked_beacon})
overclocked_beacon = nil
