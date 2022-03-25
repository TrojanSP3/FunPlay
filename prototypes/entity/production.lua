require("__FunPlay__/global")

local stone_furnace = util.table.deepcopy(data.raw["furnace"]["stone-furnace"])
stone_furnace.name = mod_entity_stone_furnace_name
stone_furnace.minable.result = mod_item_stone_furnace_name
stone_furnace.energy_usage = "1200kW" --"90kW"
stone_furnace.crafting_speed = 100 --1
stone_furnace.energy_source.emissions_per_minute = 20 --2
stone_furnace.animation.layers[1].tint=mod_stone_furnace_tint
data:extend({stone_furnace})
stone_furnace = nil

local electric_furnace = util.table.deepcopy(data.raw["furnace"]["electric-furnace"])
electric_furnace.name = mod_entity_electric_furnace_name
electric_furnace.minable.result = mod_item_electric_furnace_name
electric_furnace.crafting_speed = 200 --2
electric_furnace.energy_usage = "1800kW" --"180kW"
electric_furnace.energy_source.emissions_per_minute = 10 --1
electric_furnace.animation.layers[1].tint=mod_electric_furnace_tint
data:extend({electric_furnace})
electric_furnace = nil

local assemble_a = util.table.deepcopy(data.raw["assembling-machine"]["assembling-machine-1"])
assemble_a.name = mod_entity_assemble_a_name
assemble_a.minable.result = mod_item_assemble_a_name
assemble_a.next_upgrade = mod_entity_assemble_b_name
assemble_a.crafting_speed = 50 --0.5
assemble_a.energy_source.emissions_per_minute = 40 --4
assemble_a.energy_usage = "750kW" --"75kW"
assemble_a.animation.layers[1].tint=mod_assemble_a_tint
data:extend({assemble_a})
assemble_a = nil

local assemble_b = util.table.deepcopy(data.raw["assembling-machine"]["assembling-machine-2"])
assemble_b.name = mod_entity_assemble_b_name
assemble_b.minable.result = mod_item_assemble_b_name
assemble_b.next_upgrade = mod_entity_assemble_c_name
assemble_b.crafting_speed = 75 --0.75
assemble_b.energy_source.emissions_per_minute = 30 --3
assemble_b.energy_usage = "1500kW" --"150kW"
assemble_b.animation.layers[1].tint=mod_assemble_b_tint
data:extend({assemble_b})
assemble_b = nil

local assemble_c = util.table.deepcopy(data.raw["assembling-machine"]["assembling-machine-3"])
assemble_c.name = mod_entity_assemble_c_name
assemble_c.minable.result = mod_item_assemble_c_name
assemble_c.crafting_speed = 125 --1.25
assemble_c.energy_source.emissions_per_minute = 20 --2 
assemble_c.energy_usage = "3750kW" --"375kW"
assemble_c.animation.layers[1].tint=mod_assemble_c_tint
data:extend({assemble_c})
assemble_c = nil

local oil_refinery = util.table.deepcopy(data.raw["assembling-machine"]["oil-refinery"])
oil_refinery.name = mod_entity_oil_refinery_name
oil_refinery.minable.result = mod_item_oil_refinery_name
oil_refinery.crafting_speed = 100 --1
oil_refinery.energy_source.emissions_per_minute=60 --6
oil_refinery.energy_usage = "4200kW" --"420kW"
oil_refinery.animation.north.layers[1].tint=mod_oil_refinery_tint
oil_refinery.animation.east.layers[1].tint=mod_oil_refinery_tint
oil_refinery.animation.south.layers[1].tint=mod_oil_refinery_tint
oil_refinery.animation.west.layers[1].tint=mod_oil_refinery_tint
data:extend({oil_refinery})
oil_refinery = nil

local chemical_plant = util.table.deepcopy(data.raw["assembling-machine"]["chemical-plant"])
chemical_plant.name = mod_entity_chemical_plant_name
chemical_plant.minable.result = mod_item_chemical_plant_name
chemical_plant.crafting_speed = 100 --1
chemical_plant.energy_source.emissions_per_minute=40 --4
chemical_plant.energy_usage = "2100kW" --"210kW"
chemical_plant.animation.north.layers[1].tint=mod_chemical_plant_tint
chemical_plant.animation.east.layers[1].tint=mod_chemical_plant_tint
chemical_plant.animation.south.layers[1].tint=mod_chemical_plant_tint
chemical_plant.animation.west.layers[1].tint=mod_chemical_plant_tint
data:extend({chemical_plant})
chemical_plant = nil
  
local centrifuge = util.table.deepcopy(data.raw["assembling-machine"]["centrifuge"])
centrifuge.name = mod_entity_centrifuge_name
centrifuge.minable.result = mod_item_centrifuge_name
centrifuge.crafting_speed = 100 --1
centrifuge.energy_source.emissions_per_minute=40 --4
centrifuge.energy_usage = "3500kW" --"350kW"
centrifuge.idle_animation.layers[1].tint=mod_centrifuge_tint
centrifuge.idle_animation.layers[3].tint=mod_centrifuge_tint
centrifuge.idle_animation.layers[5].tint=mod_centrifuge_tint
data:extend({centrifuge})
centrifuge = nil

local lab = util.table.deepcopy(data.raw["lab"]["lab"])
lab.name = mod_entity_lab_name
lab.minable.result = mod_item_lab_name
lab.energy_usage = "1MW" --"60kW"
lab.researching_speed = 100 --1
lab.on_animation.layers[1].tint=mod_lab_tint
lab.off_animation.layers[1].tint=mod_lab_tint
data:extend({lab})
lab = nil
