require("__FunPlay__/global")

local stone_furnace = util.table.deepcopy(data.raw["furnace"][mod_entity_stone_furnace_name])
stone_furnace.type = "assembling-machine"
stone_furnace.source_inventory_size = 2
data:extend({stone_furnace})
data.raw.furnace[mod_entity_stone_furnace_name] = nil

local electric_furnace = util.table.deepcopy(data.raw["furnace"][mod_entity_electric_furnace_name])
electric_furnace.type = "assembling-machine"
electric_furnace.source_inventory_size = 2
data:extend({electric_furnace})
data.raw.furnace[mod_entity_electric_furnace_name] = nil

local oil_refinery = data.raw["assembling-machine"][mod_entity_oil_refinery_name]
table.insert(oil_refinery.crafting_categories, "fuel-refinery")
table.insert(oil_refinery.crafting_categories, "growing")
table.insert(oil_refinery.crafting_categories, "bioprocessing")

local chemical_plant = data.raw["assembling-machine"][mod_entity_chemical_plant_name]
table.insert(chemical_plant.crafting_categories, "electrolysis")
table.insert(chemical_plant.crafting_categories, "fluid-filtration")
table.insert(chemical_plant.crafting_categories, "atmosphere-condensation")

local assemble_a = data.raw["assembling-machine"][mod_entity_assemble_a_name]
table.insert(assemble_a.crafting_categories, "crushing")

local assemble_b = data.raw["assembling-machine"][mod_entity_assemble_b_name]
table.insert(assemble_b.crafting_categories, "research-data")
table.insert(assemble_b.crafting_categories, "t2-tech-cards")
table.insert(assemble_b.crafting_categories, "t3-tech-cards")

local assemble_c = data.raw["assembling-machine"][mod_entity_assemble_c_name]
table.insert(assemble_c.crafting_categories, "research-data")
table.insert(assemble_c.crafting_categories, "t2-tech-cards")
table.insert(assemble_c.crafting_categories, "t3-tech-cards")

local pumpjack = data.raw["mining-drill"][mod_entity_pumpjack_name]
table.insert(pumpjack.resource_categories, "oil")
table.insert(pumpjack.resource_categories, "basic-fluid")

local lab = data.raw["lab"][mod_entity_lab_name]
table.insert(lab.inputs, 1, "basic-tech-card")
table.insert(lab.inputs, "matter-tech-card")			
table.insert(lab.inputs, "advanced-tech-card")
table.insert(lab.inputs, "singularity-tech-card")

local grid_super_power_armor = data.raw["equipment-grid"][mod_grid_super_power_armor_name]
table.insert(grid_super_power_armor.equipment_categories, "universal-equipment")
table.insert(grid_super_power_armor.equipment_categories, "robot-interaction-equipment")

local super_power_armor = data.raw["armor"][mod_item_super_power_armor_name]
table.insert(super_power_armor.resistances, 
{
    type     = "radioactive",
    decrease = 0,
    percent  = 100
})

