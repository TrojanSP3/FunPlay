require("__FunPlay__/global")

local mining_drill = util.table.deepcopy(data.raw["item"]["electric-mining-drill"])
mining_drill.name         =mod_item_electric_mining_drill_name
mining_drill.place_result =mod_entity_electric_mining_drill_name
mining_drill.subgroup     =mod_subgroup_mining_name
mining_drill.order        ="a"
mining_drill.stack_size = 100
mining_drill.flags = nil
mining_drill.icons = item_icon_to_icons_conversion()
mining_drill.icons[1].icon=mining_drill.icon
mining_drill.icons[1].tint=mod_electric_mining_drill_tint
data:extend({mining_drill})
mining_drill=nil

local pumpjack = util.table.deepcopy(data.raw["item"]["pumpjack"])
pumpjack.name         =mod_item_pumpjack_name
pumpjack.place_result =mod_entity_pumpjack_name
pumpjack.subgroup     =mod_subgroup_mining_name
pumpjack.order        ="b"
pumpjack.stack_size = 100
pumpjack.flags = nil
pumpjack.icons = item_icon_to_icons_conversion()
pumpjack.icons[1].icon=pumpjack.icon
pumpjack.icons[1].tint=mod_pumpjack_tint
data:extend({pumpjack})
pumpjack=nil
