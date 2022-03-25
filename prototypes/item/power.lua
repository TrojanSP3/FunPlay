require("__FunPlay__/global")

local solar_panel = util.table.deepcopy(data.raw["item"]["solar-panel"])
solar_panel.name         =mod_item_solar_panel_name
solar_panel.place_result =mod_entity_solar_panel_name
solar_panel.subgroup     =mod_subgroup_power_name
solar_panel.order        ="a"
solar_panel.stack_size = 100
solar_panel.icons = item_icon_to_icons_conversion()
solar_panel.icons[1].icon=solar_panel.icon
solar_panel.icons[1].tint=mod_solar_panel_tint
data:extend({solar_panel})
solar_panel=nil

local accumulator = util.table.deepcopy(data.raw["item"]["accumulator"])
accumulator.name         =mod_item_accumulator_name
accumulator.place_result =mod_entity_accumulator_name
accumulator.subgroup     =mod_subgroup_power_name
accumulator.order        ="b"
accumulator.stack_size = 100
accumulator.icons = item_icon_to_icons_conversion()
accumulator.icons[1].icon=accumulator.icon
accumulator.icons[1].tint=mod_accumulator_tint
data:extend({accumulator})
accumulator=nil