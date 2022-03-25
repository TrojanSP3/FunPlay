--require("__FunPlay__/global")

--Prototypes
function item_icon_to_icons_conversion()
return  { 
            {
                icon = "", 
                tint = {r=1, g=1.0, b=1.0, a=1.0},
                icon_size = 64,
                icon_mipmaps = 4,
            } 
        }
end

--Paths
local mod_path = "__FunPlay__/"
mod_graphics_path   = mod_path .. "graphics/"
mod_prototype_path  = mod_path .. "prototypes/"
mod_entity_path     = mod_prototype_path .. "entity/"
mod_item_path       = mod_prototype_path .. "item/"
mod_recipe_path     = mod_prototype_path .. "recipe/"
mod_group_path      = mod_prototype_path .. "group/"
mod_compatibility_path  = mod_path .. "compatibility/"

--Name prefixes
local mod_name_prefix       = "funplay-"
local mod_entity_prefix     = mod_name_prefix .. "entity-"
local mod_item_prefix       = mod_name_prefix .. "item-"
local mod_recipe_prefix     = mod_name_prefix .. "recipe-"
local mod_group_prefix      = mod_name_prefix .. "group-"
local mod_subgroup_prefix   = mod_name_prefix .. "subgroup-"
local mod_projectile_prefix = mod_name_prefix .. "projectile-"
local mod_corpse_prefix     = mod_name_prefix .. "corpse-"
local mod_grid_prefix       = mod_name_prefix .. "grid-"

--Names
local mod_items_tab_name    = "items-tab"
mod_items_tab_icon          = "__base__/graphics/item-group/effects.png"
mod_items_tab_tint          = {r=0.5, g=1.0, b=0.5, a=1} 
mod_group_items_tab_name    = mod_group_prefix .. mod_items_tab_name
mod_subgroup_creative_name  = mod_subgroup_prefix .. "creative"
mod_subgroup_transport_name = mod_subgroup_prefix .. "transport"
mod_subgroup_power_name     = mod_subgroup_prefix .. "power"
mod_subgroup_mining_name    = mod_subgroup_prefix .. "mining"
mod_subgroup_production_name= mod_subgroup_prefix .. "production"
mod_subgroup_modules_name   = mod_subgroup_prefix .. "modules"
mod_subgroup_warfare_name   = mod_subgroup_prefix .. "warfare"
mod_subgroup_units_name     = mod_subgroup_prefix .. "units"

local mod_infinity_chest_name    = "infinity-chest-destructable"
mod_entity_infinity_chest_name   = mod_entity_prefix  .. mod_infinity_chest_name
mod_item_infinity_chest_name     = mod_item_prefix    .. mod_infinity_chest_name
mod_recipe_infinity_chest_name   = mod_recipe_prefix  .. mod_infinity_chest_name
mod_infinity_chest_name = nil

local mod_infinity_pipe_name    = "infinity-pipe-destructable"
mod_entity_infinity_pipe_name   = mod_entity_prefix  .. mod_infinity_pipe_name
mod_item_infinity_pipe_name     = mod_item_prefix    .. mod_infinity_pipe_name
mod_recipe_infinity_pipe_name   = mod_recipe_prefix  .. mod_infinity_pipe_name
mod_infinity_pipe_name = nil

local mod_infinity_energy_name    = "infinity-energy"
mod_entity_infinity_energy_name   = mod_entity_prefix  .. mod_infinity_energy_name
mod_item_infinity_energy_name     = mod_item_prefix    .. mod_infinity_energy_name
mod_recipe_infinity_energy_name   = mod_recipe_prefix  .. mod_infinity_energy_name
mod_infinity_energy_name = nil

local mod_electric_inserter_name    = "overclocked-inserter"
mod_entity_electric_inserter_name   = mod_entity_prefix  .. mod_electric_inserter_name
mod_item_electric_inserter_name     = mod_item_prefix    .. mod_electric_inserter_name
mod_recipe_electric_inserter_name   = mod_recipe_prefix  .. mod_electric_inserter_name
mod_electric_inserter_tint          = {r=0.7, g=0.5, b=0.5, a=1} 
mod_electric_inserter_name = nil

local mod_electric_stack_inserter_name    = "overclocked-stack-inserter"
mod_entity_electric_stack_inserter_name   = mod_entity_prefix  .. mod_electric_stack_inserter_name
mod_item_electric_stack_inserter_name     = mod_item_prefix    .. mod_electric_stack_inserter_name
mod_recipe_electric_stack_inserter_name   = mod_recipe_prefix  .. mod_electric_stack_inserter_name
mod_electric_stack_inserter_tint          = {r=0.5, g=0.5, b=0.7, a=1} 
mod_electric_stack_inserter_name = nil

local mod_electric_pole_name    = "long-range-electric-pole"
mod_entity_electric_pole_name   = mod_entity_prefix  .. mod_electric_pole_name
mod_item_electric_pole_name     = mod_item_prefix    .. mod_electric_pole_name
mod_recipe_electric_pole_name   = mod_recipe_prefix  .. mod_electric_pole_name
mod_electric_pole_tint          = {r=0.5, g=0.7, b=0.5, a=1} 
mod_electric_pole_name = nil

local mod_large_roboport_name    = "large-roboport"
mod_entity_large_roboport_name   = mod_entity_prefix  .. mod_large_roboport_name
mod_item_large_roboport_name     = mod_item_prefix    .. mod_large_roboport_name
mod_recipe_large_roboport_name   = mod_recipe_prefix  .. mod_large_roboport_name
mod_large_roboport_tint          = {r=0.5, g=0.5, b=0.7, a=1}
mod_large_roboport_name = nil

local mod_solar_panel_name    = "solar-panel"
mod_entity_solar_panel_name   = mod_entity_prefix  .. mod_solar_panel_name
mod_item_solar_panel_name     = mod_item_prefix    .. mod_solar_panel_name
mod_recipe_solar_panel_name   = mod_recipe_prefix  .. mod_solar_panel_name
mod_solar_panel_tint          = {r=0.5, g=0.7, b=0.5, a=1}
mod_solar_panel_name = nil

local mod_accumulator_name    = "accumulator"
mod_entity_accumulator_name   = mod_entity_prefix  .. mod_accumulator_name
mod_item_accumulator_name     = mod_item_prefix    .. mod_accumulator_name
mod_recipe_accumulator_name   = mod_recipe_prefix  .. mod_accumulator_name
mod_accumulator_tint          = {r=0.5, g=0.7, b=0.5, a=1}
mod_accumulator_name = nil

local mod_electric_mining_drill_name    = "electric-mining-drill"
mod_entity_electric_mining_drill_name   = mod_entity_prefix  .. mod_electric_mining_drill_name
mod_item_electric_mining_drill_name     = mod_item_prefix    .. mod_electric_mining_drill_name
mod_recipe_electric_mining_drill_name   = mod_recipe_prefix  .. mod_electric_mining_drill_name
mod_electric_mining_drill_tint          = {r=0.7, g=0.5, b=0.5, a=1}
mod_electric_mining_drill_name = nil

local mod_pumpjack_name    = "pumpjack"
mod_entity_pumpjack_name   = mod_entity_prefix  .. mod_pumpjack_name
mod_item_pumpjack_name     = mod_item_prefix    .. mod_pumpjack_name
mod_recipe_pumpjack_name   = mod_recipe_prefix  .. mod_pumpjack_name
mod_pumpjack_tint          = {r=0.7, g=0.5, b=0.5, a=1}
mod_pumpjack_name = nil

local mod_stone_furnace_name    = "stone-furnace"
mod_entity_stone_furnace_name   = mod_entity_prefix  .. mod_stone_furnace_name
mod_item_stone_furnace_name     = mod_item_prefix    .. mod_stone_furnace_name
mod_recipe_stone_furnace_name   = mod_recipe_prefix  .. mod_stone_furnace_name
mod_stone_furnace_tint          = {r=0.5, g=0.7, b=0.7, a=1}
mod_stone_furnace_name = nil

local mod_electric_furnace_name    = "electric-furnace"
mod_entity_electric_furnace_name   = mod_entity_prefix  .. mod_electric_furnace_name
mod_item_electric_furnace_name     = mod_item_prefix    .. mod_electric_furnace_name
mod_recipe_electric_furnace_name   = mod_recipe_prefix  .. mod_electric_furnace_name
mod_electric_furnace_tint          = {r=0.5, g=0.7, b=0.7, a=1}
mod_electric_furnace_name = nil

local mod_assemble_a_name    = "assembling-machine-1"
mod_entity_assemble_a_name   = mod_entity_prefix  .. mod_assemble_a_name
mod_item_assemble_a_name     = mod_item_prefix    .. mod_assemble_a_name
mod_recipe_assemble_a_name   = mod_recipe_prefix  .. mod_assemble_a_name
mod_assemble_a_tint          = {r=1.0, g=0.5, b=0.7, a=1}
mod_assemble_a_name = nil

local mod_assemble_b_name    = "assembling-machine-2"
mod_entity_assemble_b_name   = mod_entity_prefix  .. mod_assemble_b_name
mod_item_assemble_b_name     = mod_item_prefix    .. mod_assemble_b_name
mod_recipe_assemble_b_name   = mod_recipe_prefix  .. mod_assemble_b_name
mod_assemble_b_tint          = {r=0.5, g=0.7, b=1.0, a=1}
mod_assemble_b_name = nil

local mod_assemble_c_name    = "assembling-machine-3"
mod_entity_assemble_c_name   = mod_entity_prefix  .. mod_assemble_c_name
mod_item_assemble_c_name     = mod_item_prefix    .. mod_assemble_c_name
mod_recipe_assemble_c_name   = mod_recipe_prefix  .. mod_assemble_c_name
mod_assemble_c_tint          = {r=0.7, g=1.0, b=0.5, a=1}
mod_assemble_c_name = nil

local mod_oil_refinery_name    = "oil-refinery"
mod_entity_oil_refinery_name   = mod_entity_prefix  .. mod_oil_refinery_name
mod_item_oil_refinery_name     = mod_item_prefix    .. mod_oil_refinery_name
mod_recipe_oil_refinery_name   = mod_recipe_prefix  .. mod_oil_refinery_name
mod_oil_refinery_tint          = {r=0.7, g=0.5, b=0.7, a=1}
mod_oil_refinery_name = nil

local mod_chemical_plant_name    = "chemical-plant"
mod_entity_chemical_plant_name   = mod_entity_prefix  .. mod_chemical_plant_name
mod_item_chemical_plant_name     = mod_item_prefix    .. mod_chemical_plant_name
mod_recipe_chemical_plant_name   = mod_recipe_prefix  .. mod_chemical_plant_name
mod_chemical_plant_tint          = {r=0.7, g=0.5, b=0.7, a=1}
mod_chemical_plant_name = nil

local mod_centrifuge_name    = "centrifuge"
mod_entity_centrifuge_name   = mod_entity_prefix  .. mod_centrifuge_name
mod_item_centrifuge_name     = mod_item_prefix    .. mod_centrifuge_name
mod_recipe_centrifuge_name   = mod_recipe_prefix  .. mod_centrifuge_name
mod_centrifuge_tint          = {r=0.7, g=0.5, b=0.7, a=1}
mod_centrifuge_name = nil

local mod_lab_name    = "lab"
mod_entity_lab_name   = mod_entity_prefix  .. mod_lab_name
mod_item_lab_name     = mod_item_prefix    .. mod_lab_name
mod_recipe_lab_name   = mod_recipe_prefix  .. mod_lab_name
mod_lab_tint          = {r=0.7, g=0.7, b=1.0, a=1}
mod_lab_name = nil

local mod_compacted_beacon_name    = "compacted-beacon"
mod_entity_compacted_beacon_name   = mod_entity_prefix  .. mod_compacted_beacon_name
mod_item_compacted_beacon_name     = mod_item_prefix    .. mod_compacted_beacon_name
mod_recipe_compacted_beacon_name   = mod_recipe_prefix  .. mod_compacted_beacon_name
mod_compacted_beacon_tint          = {r=0.5, g=0.5, b=0.7, a=1}
mod_compacted_beacon_name = nil

local mod_overclocked_beacon_name    = "overclocked-beacon"
mod_entity_overclocked_beacon_name   = mod_entity_prefix  .. mod_overclocked_beacon_name
mod_item_overclocked_beacon_name     = mod_item_prefix    .. mod_overclocked_beacon_name
mod_recipe_overclocked_beacon_name   = mod_recipe_prefix  .. mod_overclocked_beacon_name
mod_overclocked_beacon_tint          = {r=0.7, g=0.5, b=0.5, a=1}
mod_overclocked_beacon_name = nil

local mod_pollution_module_name    = "pollution-module"
mod_pollution_module_icon          = "__base__/graphics/icons/stone.png"
mod_item_pollution_module_name     = mod_item_prefix    .. mod_pollution_module_name
mod_recipe_pollution_module_name   = mod_recipe_prefix  .. mod_pollution_module_name
mod_pollution_module_tint          = {r=0.0, g=1.0, b=1.0, a=1}
mod_pollution_module_name = nil

local mod_upgrade_module_name    = "upgrade-module"
mod_upgrade_module_icon          = "__base__/graphics/icons/rocket-part.png"
mod_item_upgrade_module_name     = mod_item_prefix    .. mod_upgrade_module_name
mod_recipe_upgrade_module_name   = mod_recipe_prefix  .. mod_upgrade_module_name
mod_upgrade_module_tint          = {r=0.5, g=0.5, b=0.7, a=1}
mod_upgrade_module_name = nil

local mod_generation_module_name    = "generation-module"
mod_generation_module_icon          = "__base__/graphics/icons/rocket-control-unit.png"
mod_item_generation_module_name     = mod_item_prefix    .. mod_generation_module_name
mod_recipe_generation_module_name   = mod_recipe_prefix  .. mod_generation_module_name
mod_generation_module_tint          = {r=0.5, g=0.7, b=0.5, a=1}
mod_generation_module_name = nil

local mod_unbreakable_wall_name    = "unbreakable-wall"
mod_unbreakable_wall_icon          = "__base__/graphics/icons/cliff.png"
mod_entity_unbreakable_wall_name   = mod_entity_prefix  .. mod_unbreakable_wall_name
mod_item_unbreakable_wall_name     = mod_item_prefix    .. mod_unbreakable_wall_name
mod_recipe_unbreakable_wall_name   = mod_recipe_prefix  .. mod_unbreakable_wall_name
mod_unbreakable_wall_tint          = {r=0.5, g=0.5, b=0.5, a=1}
mod_unbreakable_wall_name = nil

local mod_compacted_grenade_name        = "compacted-grenade"
mod_projectile_compacted_grenade_name   = mod_projectile_prefix .. mod_compacted_grenade_name
mod_item_compacted_grenade_name         = mod_item_prefix       .. mod_compacted_grenade_name
mod_recipe_compacted_grenade_name       = mod_recipe_prefix     .. mod_compacted_grenade_name
mod_compacted_grenade_tint              = {r=0.6, g=1.0, b=0.6, a=1}
mod_compacted_grenade_name = nil

local mod_compacted_cluster_grenade_name        = "compacted-cluster-grenade"
mod_projectile_compacted_cluster_grenade_name   = mod_projectile_prefix .. mod_compacted_cluster_grenade_name
mod_item_compacted_cluster_grenade_name         = mod_item_prefix    .. mod_compacted_cluster_grenade_name
mod_recipe_compacted_cluster_grenade_name       = mod_recipe_prefix  .. mod_compacted_cluster_grenade_name
mod_compacted_cluster_grenade_tint              = {r=1.0, g=0.6, b=0.6, a=1}
mod_compacted_cluster_grenade_name = nil

local mod_nuke_landmine_name    = "nuke-landmine"
mod_entity_nuke_landmine_name   = mod_entity_prefix  .. mod_nuke_landmine_name
mod_item_nuke_landmine_name     = mod_item_prefix    .. mod_nuke_landmine_name
mod_recipe_nuke_landmine_name   = mod_recipe_prefix  .. mod_nuke_landmine_name
mod_nuke_landmine_tint          = {r=0.7, g=0.5, b=0.5, a=1}
mod_nuke_landmine_name = nil

local mod_super_power_armor_name    = "super-power-armor"
mod_grid_super_power_armor_name     = mod_grid_prefix    .. mod_super_power_armor_name
mod_item_super_power_armor_name     = mod_item_prefix    .. mod_super_power_armor_name
mod_recipe_super_power_armor_name   = mod_recipe_prefix  .. mod_super_power_armor_name
mod_super_power_armor_tint          = {r=0.7, g=0.5, b=0.5, a=1}
mod_super_power_armor_name = nil

local mod_infinity_gun_turret_1_name    = "infinity-gun-turret-1"
mod_entity_infinity_gun_turret_1_name   = mod_entity_prefix  .. mod_infinity_gun_turret_1_name
mod_item_infinity_gun_turret_1_name     = mod_item_prefix    .. mod_infinity_gun_turret_1_name
mod_recipe_infinity_gun_turret_1_name   = mod_recipe_prefix  .. mod_infinity_gun_turret_1_name
mod_infinity_gun_turret_1_tint          = {r=0.2, g=0.2, b=0.7, a=1}
mod_infinity_gun_turret_1_name = nil

local mod_infinity_gun_turret_2_name    = "infinity-gun-turret-2"
mod_entity_infinity_gun_turret_2_name   = mod_entity_prefix  .. mod_infinity_gun_turret_2_name
mod_item_infinity_gun_turret_2_name     = mod_item_prefix    .. mod_infinity_gun_turret_2_name
mod_recipe_infinity_gun_turret_2_name   = mod_recipe_prefix  .. mod_infinity_gun_turret_2_name
mod_infinity_gun_turret_2_tint          = {r=0.2, g=1.0, b=0.2, a=1}
mod_infinity_gun_turret_2_name = nil

local mod_infinity_gun_turret_3_name    = "infinity-gun-turret-3"
mod_entity_infinity_gun_turret_3_name   = mod_entity_prefix  .. mod_infinity_gun_turret_3_name
mod_item_infinity_gun_turret_3_name     = mod_item_prefix    .. mod_infinity_gun_turret_3_name
mod_recipe_infinity_gun_turret_3_name   = mod_recipe_prefix  .. mod_infinity_gun_turret_3_name
mod_infinity_gun_turret_3_tint          = {r=1.0, g=0.2, b=0.2, a=1}
mod_infinity_gun_turret_3_name = nil

local mod_long_range_laser_name    = "long-range-laser"
mod_entity_long_range_laser_name   = mod_entity_prefix  .. mod_long_range_laser_name
mod_item_long_range_laser_name     = mod_item_prefix    .. mod_long_range_laser_name
mod_recipe_long_range_laser_name   = mod_recipe_prefix  .. mod_long_range_laser_name
mod_long_range_laser_tint          = {r=0.2, g=1.0, b=0.2, a=1}
mod_long_range_laser_name = nil

local mod_power_laser_name    = "power-laser"
mod_entity_power_laser_name   = mod_entity_prefix  .. mod_power_laser_name
mod_item_power_laser_name     = mod_item_prefix    .. mod_power_laser_name
mod_recipe_power_laser_name   = mod_recipe_prefix  .. mod_power_laser_name
mod_power_laser_tint          = {r=1.0, g=0.2, b=0.2, a=1}
mod_power_laser_name = nil

local mod_overclocked_radar_name    = "overclocked-radar"
mod_entity_overclocked_radar_name   = mod_entity_prefix  .. mod_overclocked_radar_name
mod_item_overclocked_radar_name     = mod_item_prefix    .. mod_overclocked_radar_name
mod_recipe_overclocked_radar_name   = mod_recipe_prefix  .. mod_overclocked_radar_name
mod_overclocked_radar_tint          = {r=0.7, g=1.0, b=0.5, a=1}
mod_overclocked_radar_name = nil

local mod_slasher_name    = "slasher"
mod_entity_slasher_name   = mod_entity_prefix  .. mod_slasher_name
mod_slasher_tint_1        = {r=0.30, g=1.0, b=0.25, a=1}
mod_slasher_tint_2        = {r=0.45 , g=1.0, b=0.27, a=1}
mod_slasher_name = nil

local mod_slasher_spawner_name    = "slasher-spawner"
mod_slasher_spawner_icon          = "__base__/graphics/icons/biter-spawner.png"
mod_entity_slasher_spawner_name   = mod_entity_prefix  .. mod_slasher_spawner_name
mod_item_slasher_spawner_name     = mod_item_prefix    .. mod_slasher_spawner_name
mod_recipe_slasher_spawner_name   = mod_recipe_prefix  .. mod_slasher_spawner_name
mod_slasher_spawner_tint          = {r=0.23, g=1.0, b=0, a=0.8}
mod_slasher_spawner_name = nil

local mod_gunner_name         = "gunner"
mod_entity_gunner_name        = mod_entity_prefix  .. mod_gunner_name
mod_entity_gunner_corpse_name = mod_corpse_prefix  .. mod_gunner_name
mod_gunner_tint               = {r=0.30, g=1.0, b=0.25, a=1}
mod_gunner_name = nil

local mod_gunner_spawner_name    = "gunner-spawner"
mod_gunner_spawner_icon          = "__base__/graphics/icons/market.png"
mod_entity_gunner_spawner_name   = mod_entity_prefix  .. mod_gunner_spawner_name
mod_item_gunner_spawner_name     = mod_item_prefix    .. mod_gunner_spawner_name
mod_recipe_gunner_spawner_name   = mod_recipe_prefix  .. mod_gunner_spawner_name
mod_gunner_spawner_tint          = {r=0.23, g=1.0, b=0, a=0.8}
mod_gunner_spawner_name = nil

mod_infinity_rocket_turret_icon            = mod_graphics_path .. "rocket-turret.png"
local mod_infinity_rocket_turret_1_name    = "infinity-rocket-turret-1"
mod_entity_infinity_rocket_turret_1_name   = mod_entity_prefix  .. mod_infinity_rocket_turret_1_name
mod_item_infinity_rocket_turret_1_name     = mod_item_prefix    .. mod_infinity_rocket_turret_1_name
mod_recipe_infinity_rocket_turret_1_name   = mod_recipe_prefix  .. mod_infinity_rocket_turret_1_name
mod_infinity_rocket_turret_1_tint          = {r=0.2, g=0.2, b=0.7, a=1}
mod_infinity_rocket_turret_1_name = nil

local mod_infinity_rocket_turret_2_name    = "infinity-rocket-turret-2"
mod_entity_infinity_rocket_turret_2_name   = mod_entity_prefix  .. mod_infinity_rocket_turret_2_name
mod_item_infinity_rocket_turret_2_name     = mod_item_prefix    .. mod_infinity_rocket_turret_2_name
mod_recipe_infinity_rocket_turret_2_name   = mod_recipe_prefix  .. mod_infinity_rocket_turret_2_name
mod_infinity_rocket_turret_2_tint          = {r=0.2, g=1.0, b=0.2, a=1}
mod_infinity_rocket_turret_2_name = nil

local mod_infinity_rocket_turret_3_name    = "infinity-rocket-turret-3"
mod_entity_infinity_rocket_turret_3_name   = mod_entity_prefix  .. mod_infinity_rocket_turret_3_name
mod_item_infinity_rocket_turret_3_name     = mod_item_prefix    .. mod_infinity_rocket_turret_3_name
mod_recipe_infinity_rocket_turret_3_name   = mod_recipe_prefix  .. mod_infinity_rocket_turret_3_name
mod_infinity_rocket_turret_3_tint          = {r=1.0, g=0.2, b=0.2, a=1}
mod_infinity_rocket_turret_3_name = nil

local mod_hardened_wall_name    = "hardened-wall"
mod_hardened_wall_icon          = "__base__/graphics/icons/wall.png"
mod_entity_hardened_wall_name   = mod_entity_prefix  .. mod_hardened_wall_name
mod_item_hardened_wall_name     = mod_item_prefix    .. mod_hardened_wall_name
mod_recipe_hardened_wall_name   = mod_recipe_prefix  .. mod_hardened_wall_name
mod_hardened_wall_tint          = {r=1.0, g=0.5, b=0.5, a=1}
mod_hardened_wall_name = nil




















