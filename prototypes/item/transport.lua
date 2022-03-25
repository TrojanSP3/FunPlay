require("__FunPlay__/global")

local inserter = util.table.deepcopy(data.raw["item"]["burner-inserter"])
inserter.name         =mod_item_electric_inserter_name
inserter.place_result =mod_entity_electric_inserter_name
inserter.subgroup     =mod_subgroup_transport_name
inserter.order        ="a"
inserter.stack_size = 100
inserter.icons = item_icon_to_icons_conversion()
inserter.icons[1].icon          =inserter.icon
inserter.icons[1].tint          =mod_electric_inserter_tint
data:extend({inserter})
inserter = nil

local stack_inserter = util.table.deepcopy(data.raw["item"]["stack-inserter"])
stack_inserter.name         =mod_item_electric_stack_inserter_name
stack_inserter.place_result =mod_entity_electric_stack_inserter_name
stack_inserter.subgroup     =mod_subgroup_transport_name
stack_inserter.order        ="b"
stack_inserter.stack_size = 100
stack_inserter.icons = item_icon_to_icons_conversion()
stack_inserter.icons[1].icon=stack_inserter.icon
stack_inserter.icons[1].tint=mod_electric_stack_inserter_tint
data:extend({stack_inserter})
stack_inserter = nil

local electric_pole = util.table.deepcopy(data.raw["item"]["medium-electric-pole"])
electric_pole.name         =mod_item_electric_pole_name
electric_pole.place_result =mod_entity_electric_pole_name
electric_pole.subgroup     =mod_subgroup_transport_name
electric_pole.order        ="c"
electric_pole.stack_size = 100
electric_pole.icons = item_icon_to_icons_conversion()
electric_pole.icons[1].icon=electric_pole.icon
electric_pole.icons[1].tint=mod_electric_pole_tint
data:extend({electric_pole})
electric_pole = nil

local large_roboport = util.table.deepcopy(data.raw["item"]["roboport"])
large_roboport.name         =mod_item_large_roboport_name
large_roboport.place_result =mod_entity_large_roboport_name
large_roboport.subgroup     =mod_subgroup_transport_name
large_roboport.order        ="d"
large_roboport.stack_size = 100
large_roboport.icons = item_icon_to_icons_conversion()
large_roboport.icons[1].icon=large_roboport.icon
large_roboport.icons[1].tint=mod_large_roboport_tint
data:extend({large_roboport})
large_roboport = nil
