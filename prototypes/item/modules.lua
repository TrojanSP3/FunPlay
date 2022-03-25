require("__FunPlay__/global")

local compacted_beacon = util.table.deepcopy(data.raw["item"]["beacon"])
compacted_beacon.name         =mod_item_compacted_beacon_name
compacted_beacon.place_result =mod_entity_compacted_beacon_name
compacted_beacon.subgroup     =mod_subgroup_modules_name
compacted_beacon.order        ="a1"
compacted_beacon.stack_size = 100
compacted_beacon.icons = item_icon_to_icons_conversion()
compacted_beacon.icons[1].icon=compacted_beacon.icon
compacted_beacon.icons[1].tint=mod_compacted_beacon_tint
data:extend({compacted_beacon})
compacted_beacon=nil

local overclocked_beacon = util.table.deepcopy(data.raw["item"]["beacon"])
overclocked_beacon.name         =mod_item_overclocked_beacon_name
overclocked_beacon.place_result =mod_entity_overclocked_beacon_name
overclocked_beacon.subgroup     =mod_subgroup_modules_name
overclocked_beacon.order        ="a2"
overclocked_beacon.stack_size = 100
overclocked_beacon.icons = item_icon_to_icons_conversion()
overclocked_beacon.icons[1].icon=overclocked_beacon.icon
overclocked_beacon.icons[1].tint=mod_overclocked_beacon_tint
data:extend({overclocked_beacon})
overclocked_beacon=nil

local pollution_module = util.table.deepcopy(data.raw["module"]["speed-module"])
pollution_module.name         =mod_item_pollution_module_name
pollution_module.icon         =mod_pollution_module_icon
pollution_module.subgroup     =mod_subgroup_creative_name
pollution_module.category     ="speed"
pollution_module.order        ="d"
pollution_module.localised_description = nil
pollution_module.stack_size = 100
pollution_module.tier = 4
pollution_module.effect =
{
    productivity = {bonus = 0.0},
    consumption = {bonus = -1.0},
    pollution = {bonus = 100.0},
    speed = {bonus = 0.0}
}
pollution_module.beacon_tint =
{
    primary = mod_pollution_module_tint,--{r = 0.441, g = 0.714, b = 1.000, a = 1.000}, -- #70b6ffff
    secondary = mod_pollution_module_tint,--{r = 0.388, g = 0.976, b = 1.000, a = 1.000}, -- #63f8ffff
}
pollution_module.icons = item_icon_to_icons_conversion()
pollution_module.icons[1].icon=pollution_module.icon
pollution_module.icons[1].tint=mod_pollution_module_tint
data:extend({pollution_module})
pollution_module=nil

local upgrade_module = util.table.deepcopy(data.raw["module"]["effectivity-module"])
upgrade_module.name         =mod_item_upgrade_module_name
upgrade_module.icon         =mod_upgrade_module_icon
upgrade_module.subgroup     =mod_subgroup_modules_name
upgrade_module.category     ="effectivity"
upgrade_module.order        ="b2"
upgrade_module.localised_description = nil
upgrade_module.stack_size = 100
upgrade_module.tier = 4
upgrade_module.effect =
{
    productivity = {bonus = 0.0},
    consumption = {bonus = -1.0},
    pollution = {bonus = 2.0},
    speed = {bonus = 1.0}
}
upgrade_module.beacon_tint =
{
    primary = mod_upgrade_module_tint,--{r = 0.441, g = 0.714, b = 1.000, a = 1.000}, -- #70b6ffff
    secondary = mod_upgrade_module_tint,--{r = 0.388, g = 0.976, b = 1.000, a = 1.000}, -- #63f8ffff
}
upgrade_module.icons = item_icon_to_icons_conversion()
upgrade_module.icons[1].icon=upgrade_module.icon
upgrade_module.icons[1].tint=mod_upgrade_module_tint
data:extend({upgrade_module})
upgrade_module=nil

local generation_module = util.table.deepcopy(data.raw["module"]["productivity-module"])
generation_module.name         =mod_item_generation_module_name
generation_module.icon         =mod_generation_module_icon
generation_module.subgroup     =mod_subgroup_modules_name
generation_module.category     ="productivity"
generation_module.order        ="b3"
generation_module.localised_description = nil
generation_module.stack_size = 100
generation_module.tier = 4
generation_module.effect =
{
    productivity = {bonus = 1.0},
    consumption = {bonus = 2.0},
    pollution = {bonus = 2.0},
    speed = {bonus = 0.0}
}
generation_module.beacon_tint =
{
    primary = mod_generation_module_tint,--{r = 0.441, g = 0.714, b = 1.000, a = 1.000}, -- #70b6ffff
    secondary = mod_generation_module_tint,--{r = 0.388, g = 0.976, b = 1.000, a = 1.000}, -- #63f8ffff
}
generation_module.icons = item_icon_to_icons_conversion()
generation_module.icons[1].icon=generation_module.icon
generation_module.icons[1].tint=mod_generation_module_tint
data:extend({generation_module})
generation_module=nil
