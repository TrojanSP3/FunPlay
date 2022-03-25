require("__FunPlay__/global")

local slasher_spawner = util.table.deepcopy(data.raw["item"]["stone"])
slasher_spawner.icon         =mod_slasher_spawner_icon
slasher_spawner.name         =mod_item_slasher_spawner_name
slasher_spawner.place_result =mod_entity_slasher_spawner_name
slasher_spawner.subgroup     =mod_subgroup_units_name
slasher_spawner.order        ="a"
slasher_spawner.stack_size = 100
slasher_spawner.icons = item_icon_to_icons_conversion()
slasher_spawner.icons[1].icon=slasher_spawner.icon
slasher_spawner.icons[1].tint=mod_slasher_spawner_tint
data:extend({slasher_spawner})
slasher_spawner=nil

local gunner_spawner = util.table.deepcopy(data.raw["item"]["stone"])
gunner_spawner.icon         =mod_gunner_spawner_icon
gunner_spawner.name         =mod_item_gunner_spawner_name
gunner_spawner.place_result =mod_entity_gunner_spawner_name
gunner_spawner.subgroup     =mod_subgroup_units_name
gunner_spawner.order        ="b"
gunner_spawner.stack_size = 100
gunner_spawner.icons = item_icon_to_icons_conversion()
gunner_spawner.icons[1].icon=gunner_spawner.icon
gunner_spawner.icons[1].tint=mod_gunner_spawner_tint
data:extend({gunner_spawner})
gunner_spawner=nil