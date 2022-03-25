require("__FunPlay__/global")

local base_wall = util.table.deepcopy(data.raw["wall"]["stone-wall"])
base_wall.pictures.single.tint = mod_unbreakable_wall_tint

local function cliff_orientation()
    return
    {
        pictures = base_wall.pictures.single,
        collision_bounding_box = {{-0.5, -0.5}, {0.5, 0.5}, 0},
        fill_volume = 1
    }
end

local unbreakable_wall = util.table.deepcopy(data.raw["cliff"]["cliff"])
unbreakable_wall.name = mod_entity_unbreakable_wall_name
unbreakable_wall.minable = { mining_time = 2, result = mod_item_unbreakable_wall_name }
unbreakable_wall.cliff_explosive=""
unbreakable_wall.selectable_in_game = true
unbreakable_wall.collision_box  = {{-0.5, -0.5}, {0.5, 0.5}} --{{-0.29, -0.29}, {0.29, 0.29}}
unbreakable_wall.selection_box  = {{-0.5, -0.5}, {0.5, 0.5}} --{{-0.5, -0.5}, {0.5, 0.5}}
unbreakable_wall.grid_offset    = {0, 0} --{0, 0.5} {0.5, 0.5}
unbreakable_wall.grid_size      = {1, 1} --{4 * scale, 4 * scale}
unbreakable_wall.orientations	=
{
    west_to_east   = cliff_orientation(),
    north_to_south = cliff_orientation(),
    east_to_west   = cliff_orientation(),
    south_to_north = cliff_orientation(),
    west_to_north  = cliff_orientation(),
    north_to_east  = cliff_orientation(),
    east_to_south  = cliff_orientation(),
    south_to_west  = cliff_orientation(),
    west_to_south  = cliff_orientation(),
    north_to_west  = cliff_orientation(),
    east_to_north  = cliff_orientation(),
    south_to_east  = cliff_orientation(),
    west_to_none   = cliff_orientation(),
    none_to_east   = cliff_orientation(),
    north_to_none  = cliff_orientation(),
    none_to_south  = cliff_orientation(),
    east_to_none   = cliff_orientation(),
    none_to_west   = cliff_orientation(),
    south_to_none  = cliff_orientation(),
    none_to_north  = cliff_orientation(),
}
data:extend({unbreakable_wall})
unbreakable_wall = nil

local nuke_landmine = util.table.deepcopy(data.raw["land-mine"]["land-mine"])
nuke_landmine.name = mod_entity_nuke_landmine_name
nuke_landmine.type = "simple-entity-with-force"
nuke_landmine.minable.result = mod_item_nuke_landmine_name
nuke_landmine.create_ghost_on_death = false
nuke_landmine.max_health = 500 --15
nuke_landmine.picture=nuke_landmine.picture_safe
nuke_landmine.picture.tint = mod_nuke_landmine_tint
nuke_landmine.dying_trigger_effect = 
{
    type = "create-entity",
    entity_name = "atomic-rocket"
}
data:extend({nuke_landmine})
nuke_landmine = nil

local ammo1 = util.table.deepcopy(data.raw["ammo"]["firearm-magazine"])
local ammo2 = util.table.deepcopy(data.raw["ammo"]["piercing-rounds-magazine"])
local ammo3 = util.table.deepcopy(data.raw["ammo"]["uranium-rounds-magazine"])

local infinity_gun_turret_1 = util.table.deepcopy(data.raw["ammo-turret"]["gun-turret"])
infinity_gun_turret_1.type = "turret"
infinity_gun_turret_1.max_health = 750 --400
infinity_gun_turret_1.name = mod_entity_infinity_gun_turret_1_name
infinity_gun_turret_1.minable.result = mod_item_infinity_gun_turret_1_name
infinity_gun_turret_1.attack_parameters.ammo_type = ammo1.ammo_type
infinity_gun_turret_1.base_picture.layers[1].tint = mod_infinity_gun_turret_1_tint
data:extend({infinity_gun_turret_1})

local infinity_gun_turret_2 = util.table.deepcopy(infinity_gun_turret_1)
infinity_gun_turret_2.name = mod_entity_infinity_gun_turret_2_name
infinity_gun_turret_2.minable.result = mod_item_infinity_gun_turret_2_name
infinity_gun_turret_2.attack_parameters.ammo_type = ammo2.ammo_type
infinity_gun_turret_2.base_picture.layers[1].tint = mod_infinity_gun_turret_2_tint
data:extend({infinity_gun_turret_2})
infinity_gun_turret_2 = nil
 
local infinity_gun_turret_3 = util.table.deepcopy(infinity_gun_turret_1)
infinity_gun_turret_3.name = mod_entity_infinity_gun_turret_3_name
infinity_gun_turret_3.minable.result = mod_item_infinity_gun_turret_3_name
infinity_gun_turret_3.attack_parameters.ammo_type = ammo3.ammo_type
infinity_gun_turret_3.base_picture.layers[1].tint = mod_infinity_gun_turret_3_tint
data:extend({infinity_gun_turret_3})
infinity_gun_turret_3 = nil

infinity_gun_turret_1 = nil

local long_range_laser = util.table.deepcopy(data.raw["electric-turret"]["laser-turret"])
long_range_laser.name = mod_entity_long_range_laser_name
long_range_laser.minable.result = mod_item_long_range_laser_name
long_range_laser.energy_source.buffer_capacity = "2MJ" --"801kJ"
long_range_laser.energy_source.input_flow_limit = "2MW" --"9600kW"
long_range_laser.energy_source.drain = "30kW" --"24kW"
long_range_laser.attack_parameters.ammo_type.energy_consumption = "1MJ" --"800kJ"
long_range_laser.attack_parameters.damage_modifier = 1 --2
long_range_laser.attack_parameters.cooldown = 50 --40
long_range_laser.attack_parameters.range = 50 --24
long_range_laser.attack_parameters.ammo_type.action.action_delivery.max_length = 50 --24
long_range_laser.base_picture.layers[1].tint = mod_long_range_laser_tint
data:extend({long_range_laser})
long_range_laser = nil

local power_laser = util.table.deepcopy(data.raw["electric-turret"]["laser-turret"])
power_laser.name = mod_entity_power_laser_name
power_laser.minable.result = mod_item_power_laser_name
power_laser.preparing_speed = 0.03
power_laser.energy_source.buffer_capacity = "2MJ" --"801kJ"
power_laser.energy_source.input_flow_limit = "2MW" --"9600kW"
power_laser.energy_source.drain = "30kW" --"24kW"
power_laser.attack_parameters.ammo_type.energy_consumption = "2MJ" --"800kJ"
power_laser.attack_parameters.damage_modifier = 6 --2
power_laser.attack_parameters.cooldown = 50 --40
power_laser.attack_parameters.range = 25 --24
power_laser.attack_parameters.ammo_type.action.action_delivery.max_length = 25 --24
power_laser.base_picture.layers[1].tint = mod_power_laser_tint
data:extend({power_laser})
power_laser = nil

local overclocked_radar = util.table.deepcopy(data.raw["radar"]["radar"])
overclocked_radar.name = mod_entity_overclocked_radar_name
overclocked_radar.minable.result = mod_item_overclocked_radar_name
overclocked_radar.max_distance_of_sector_revealed = 30 --14
overclocked_radar.max_distance_of_nearby_sector_revealed = 7 --3
overclocked_radar.energy_per_sector = "5MJ" --"10MJ"
overclocked_radar.energy_per_nearby_scan = "300kJ" --"250kJ"
overclocked_radar.energy_usage = "1MW" --"300kW"
overclocked_radar.pictures.layers[1].tint = mod_overclocked_radar_tint
data:extend({overclocked_radar})
overclocked_radar = nil

local rocket_launcher = data.raw["gun"]["rocket-launcher"]
local rocket1 = data.raw["ammo"]["rocket"]
local rocket2 = data.raw["ammo"]["explosive-rocket"]
local rocket3 = data.raw["ammo"]["atomic-bomb"]


local infinity_rocket_turret_1 = util.table.deepcopy(data.raw["electric-turret"]["laser-turret"])
infinity_rocket_turret_1.type = "turret"
infinity_rocket_turret_1.name = mod_entity_infinity_rocket_turret_1_name
infinity_rocket_turret_1.minable.result = mod_item_infinity_rocket_turret_1_name
infinity_rocket_turret_1.max_health = 2000 --1000
infinity_rocket_turret_1.rotation_speed = 0.005 --0.01
infinity_rocket_turret_1.preparing_speed = 0.01 --0.05
infinity_rocket_turret_1.attack_parameters=rocket_launcher.attack_parameters
infinity_rocket_turret_1.attacking_speed = 1 --1
infinity_rocket_turret_1.attack_parameters.health_penalty = -15
infinity_rocket_turret_1.attack_parameters.ammo_type = rocket1.ammo_type
infinity_rocket_turret_1.attack_parameters.range = 25 --18
infinity_rocket_turret_1.attack_parameters.cooldown = 90 --6
infinity_rocket_turret_1.base_picture = util.table.deepcopy(data.raw["ammo-turret"]["gun-turret"]).base_picture
infinity_rocket_turret_1.base_picture.layers[1].tint = mod_infinity_rocket_turret_1_tint
infinity_rocket_turret_1.shoot_in_prepare_state = false
infinity_rocket_turret_1.turret_base_has_direction = true
--infinity_rocket_turret_1.attack_parameters.min_range = 6
--infinity_rocket_turret_1.attack_parameters.turn_range = 1.0 / 3.0

data:extend({infinity_rocket_turret_1})

local infinity_rocket_turret_2 = util.table.deepcopy(infinity_rocket_turret_1)
infinity_rocket_turret_2.name = mod_entity_infinity_rocket_turret_2_name
infinity_rocket_turret_2.minable.result = mod_item_infinity_rocket_turret_2_name
infinity_rocket_turret_2.attack_parameters.ammo_type = rocket2.ammo_type
infinity_rocket_turret_2.attack_parameters.range = 25 --18
infinity_rocket_turret_2.attack_parameters.cooldown = 90 --6
infinity_rocket_turret_2.attack_parameters.min_range = 15
infinity_rocket_turret_2.attack_parameters.turn_range = 1.0 / 3.0
infinity_rocket_turret_2.base_picture.layers[1].tint = mod_infinity_rocket_turret_2_tint
data:extend({infinity_rocket_turret_2})
infinity_rocket_turret_2 = nil

local infinity_rocket_turret_3 = util.table.deepcopy(infinity_rocket_turret_1)
infinity_rocket_turret_3.name = mod_entity_infinity_rocket_turret_3_name
infinity_rocket_turret_3.minable.result = mod_item_infinity_rocket_turret_3_name
infinity_rocket_turret_3.attack_parameters.ammo_type = rocket3.ammo_type
infinity_rocket_turret_3.attack_parameters.ammo_type.range_modifier = 1
infinity_rocket_turret_3.attack_parameters.ammo_type.cooldown_modifier = 1
infinity_rocket_turret_3.attack_parameters.range = 50 --18
infinity_rocket_turret_3.attack_parameters.cooldown = 450 --6
infinity_rocket_turret_3.attack_parameters.min_range = 25
infinity_rocket_turret_3.attack_parameters.turn_range = 1.0 / 3.0
infinity_rocket_turret_3.base_picture.layers[1].tint = mod_infinity_rocket_turret_3_tint
data:extend({infinity_rocket_turret_3})
infinity_rocket_turret_3 = nil
infinity_rocket_turret_1 = nil


local hardened_wall = util.table.deepcopy(data.raw["wall"]["stone-wall"])
hardened_wall.name = mod_entity_hardened_wall_name
hardened_wall.minable.result = mod_item_hardened_wall_name
hardened_wall.max_health = 35000
hardened_wall.repair_speed_modifier = 100
hardened_wall.pictures.single.layers[1].tint = mod_hardened_wall_tint
hardened_wall.pictures.straight_vertical.layers[1].tint = mod_hardened_wall_tint
hardened_wall.pictures.straight_horizontal.layers[1].tint = mod_hardened_wall_tint
hardened_wall.pictures.corner_right_down.layers[1].tint = mod_hardened_wall_tint
hardened_wall.pictures.corner_left_down.layers[1].tint = mod_hardened_wall_tint
hardened_wall.pictures.t_up.layers[1].tint = mod_hardened_wall_tint
hardened_wall.pictures.ending_right.layers[1].tint = mod_hardened_wall_tint
hardened_wall.pictures.ending_left.layers[1].tint = mod_hardened_wall_tint
hardened_wall.pictures.filling.tint = mod_hardened_wall_tint
hardened_wall.pictures.water_connection_patch.sheets[1].tint = mod_hardened_wall_tint
hardened_wall.pictures.gate_connection_patch.sheets[1].tint = mod_hardened_wall_tint
data:extend({hardened_wall})
hardened_wall = nil