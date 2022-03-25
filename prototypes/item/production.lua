require("__FunPlay__/global")

local stone_furnace = util.table.deepcopy(data.raw["item"]["stone-furnace"])
stone_furnace.name         =mod_item_stone_furnace_name
stone_furnace.place_result =mod_entity_stone_furnace_name
stone_furnace.subgroup     =mod_subgroup_production_name
stone_furnace.order        ="a"
stone_furnace.stack_size = 100
stone_furnace.icons = item_icon_to_icons_conversion()
stone_furnace.icons[1].icon=stone_furnace.icon
stone_furnace.icons[1].tint=mod_stone_furnace_tint
data:extend({stone_furnace})
stone_furnace=nil

local electric_furnace = util.table.deepcopy(data.raw["item"]["electric-furnace"])
electric_furnace.name         =mod_item_electric_furnace_name
electric_furnace.place_result =mod_entity_electric_furnace_name
electric_furnace.subgroup     =mod_subgroup_production_name
electric_furnace.order        ="b"
electric_furnace.stack_size = 100
electric_furnace.icons = item_icon_to_icons_conversion()
electric_furnace.icons[1].icon=electric_furnace.icon
electric_furnace.icons[1].tint=mod_electric_furnace_tint
data:extend({electric_furnace})
electric_furnace=nil

local assemble_a = util.table.deepcopy(data.raw["item"]["assembling-machine-1"])
assemble_a.name         =mod_item_assemble_a_name
assemble_a.place_result =mod_entity_assemble_a_name
assemble_a.subgroup     =mod_subgroup_production_name
assemble_a.order        ="c1"
assemble_a.stack_size = 100
assemble_a.icons = item_icon_to_icons_conversion()
assemble_a.icons[1].icon=assemble_a.icon
assemble_a.icons[1].tint=mod_assemble_a_tint
data:extend({assemble_a})
assemble_a=nil

local assemble_b = util.table.deepcopy(data.raw["item"]["assembling-machine-2"])
assemble_b.name         =mod_item_assemble_b_name
assemble_b.place_result =mod_entity_assemble_b_name
assemble_b.subgroup     =mod_subgroup_production_name
assemble_b.order        ="c2"
assemble_b.stack_size = 100
assemble_b.icons = item_icon_to_icons_conversion()
assemble_b.icons[1].icon=assemble_b.icon
assemble_b.icons[1].tint=mod_assemble_b_tint
data:extend({assemble_b})
assemble_b=nil

local assemble_c = util.table.deepcopy(data.raw["item"]["assembling-machine-3"])
assemble_c.name         =mod_item_assemble_c_name
assemble_c.place_result =mod_entity_assemble_c_name
assemble_c.subgroup     =mod_subgroup_production_name
assemble_c.order        ="c3"
assemble_c.stack_size = 100
assemble_c.icons = item_icon_to_icons_conversion()
assemble_c.icons[1].icon=assemble_c.icon
assemble_c.icons[1].tint=mod_assemble_c_tint
data:extend({assemble_c})
assemble_c=nil

local oil_refinery = util.table.deepcopy(data.raw["item"]["oil-refinery"])
oil_refinery.name         =mod_item_oil_refinery_name
oil_refinery.place_result =mod_entity_oil_refinery_name
oil_refinery.subgroup     =mod_subgroup_production_name
oil_refinery.order        ="d"
oil_refinery.stack_size = 100
oil_refinery.icons = item_icon_to_icons_conversion()
oil_refinery.icons[1].icon=oil_refinery.icon
oil_refinery.icons[1].tint=mod_oil_refinery_tint
data:extend({oil_refinery})
oil_refinery=nil

local chemical_plant = util.table.deepcopy(data.raw["item"]["chemical-plant"])
chemical_plant.name         =mod_item_chemical_plant_name
chemical_plant.place_result =mod_entity_chemical_plant_name
chemical_plant.subgroup     =mod_subgroup_production_name
chemical_plant.order        ="e"
chemical_plant.stack_size = 100
chemical_plant.icons = item_icon_to_icons_conversion()
chemical_plant.icons[1].icon=chemical_plant.icon
chemical_plant.icons[1].tint=mod_chemical_plant_tint
data:extend({chemical_plant})
chemical_plant=nil

local centrifuge = util.table.deepcopy(data.raw["item"]["centrifuge"])
centrifuge.name         =mod_item_centrifuge_name
centrifuge.place_result =mod_entity_centrifuge_name
centrifuge.subgroup     =mod_subgroup_production_name
centrifuge.order        ="f"
centrifuge.stack_size = 100
centrifuge.icons = item_icon_to_icons_conversion()
centrifuge.icons[1].icon=centrifuge.icon
centrifuge.icons[1].tint=mod_centrifuge_tint
data:extend({centrifuge})
centrifuge=nil

local lab = util.table.deepcopy(data.raw["item"]["lab"])
lab.name         =mod_item_lab_name
lab.place_result =mod_entity_lab_name
lab.subgroup     =mod_subgroup_production_name
lab.order        ="g"
lab.stack_size = 100
lab.icons = item_icon_to_icons_conversion()
lab.icons[1].icon=lab.icon
lab.icons[1].tint=mod_lab_tint
data:extend({lab})
lab=nil
