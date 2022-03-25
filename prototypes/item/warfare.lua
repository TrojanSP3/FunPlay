require("__FunPlay__/global")

local unbreakable_wall = util.table.deepcopy(data.raw["item"]["stone-wall"])
unbreakable_wall.icon         =mod_unbreakable_wall_icon
unbreakable_wall.name         =mod_item_unbreakable_wall_name
unbreakable_wall.place_result =mod_entity_unbreakable_wall_name
unbreakable_wall.subgroup     =mod_subgroup_warfare_name
unbreakable_wall.order        ="a1"
unbreakable_wall.stack_size = 100
unbreakable_wall.icons = item_icon_to_icons_conversion()
unbreakable_wall.icons[1].icon=unbreakable_wall.icon
unbreakable_wall.icons[1].tint=mod_unbreakable_wall_tint
data:extend({unbreakable_wall})
unbreakable_wall=nil

local compacted_grenade_projectile = util.table.deepcopy(data.raw["projectile"]["grenade"])
compacted_grenade_projectile.name = mod_projectile_compacted_grenade_name
compacted_grenade_projectile.action[1].action_delivery.target_effects[4].radius = 10 --2.25
compacted_grenade_projectile.action[2].radius = 13 --6.5
compacted_grenade_projectile.action[2].action_delivery.target_effects[1].damage.amount=100 --35
data:extend({compacted_grenade_projectile})
compacted_grenade_projectile=nil

local compacted_grenade = util.table.deepcopy(data.raw["capsule"]["grenade"])
compacted_grenade.name         =mod_item_compacted_grenade_name
compacted_grenade.subgroup     =mod_subgroup_warfare_name
compacted_grenade.order        ="b1"
compacted_grenade.stack_size = 100
compacted_grenade.capsule_action.attack_parameters.range= 18 --15
compacted_grenade.capsule_action.attack_parameters.ammo_type.action[1].action_delivery.projectile=mod_projectile_compacted_grenade_name
compacted_grenade.icons = item_icon_to_icons_conversion()
compacted_grenade.icons[1].icon=compacted_grenade.icon
compacted_grenade.icons[1].tint=mod_compacted_grenade_tint
data:extend({compacted_grenade})
compacted_grenade=nil

local compacted_cluster_grenade_projectile = util.table.deepcopy(data.raw["projectile"]["cluster-grenade"])
compacted_cluster_grenade_projectile.name = mod_projectile_compacted_cluster_grenade_name
compacted_cluster_grenade_projectile.action[2].cluster_count = 10 --7
compacted_cluster_grenade_projectile.action[2].distance = 10 --4
compacted_cluster_grenade_projectile.action[2].distance_deviation = 3 --3
compacted_cluster_grenade_projectile.action[2].action_delivery.projectile = mod_projectile_compacted_grenade_name
data:extend({compacted_cluster_grenade_projectile})
compacted_cluster_grenade_projectile=nil

local compacted_cluster_grenade = util.table.deepcopy(data.raw["capsule"]["cluster-grenade"])
compacted_cluster_grenade.name         =mod_item_compacted_cluster_grenade_name
compacted_cluster_grenade.subgroup     =mod_subgroup_warfare_name
compacted_cluster_grenade.order        ="b2"
compacted_cluster_grenade.stack_size = 100
compacted_cluster_grenade.capsule_action.attack_parameters.range= 30 --20
compacted_cluster_grenade.capsule_action.attack_parameters.ammo_type.action[1].action_delivery.projectile=mod_projectile_compacted_cluster_grenade_name
compacted_cluster_grenade.icons = item_icon_to_icons_conversion()
compacted_cluster_grenade.icons[1].icon=compacted_cluster_grenade.icon
compacted_cluster_grenade.icons[1].tint=mod_compacted_cluster_grenade_tint
data:extend({compacted_cluster_grenade})
compacted_cluster_grenade=nil

local nuke_landmine = util.table.deepcopy(data.raw["item"]["land-mine"])
nuke_landmine.name         =mod_item_nuke_landmine_name
nuke_landmine.place_result =mod_entity_nuke_landmine_name
nuke_landmine.subgroup     =mod_subgroup_warfare_name
nuke_landmine.order        ="b3"
nuke_landmine.stack_size = 100
nuke_landmine.icons = item_icon_to_icons_conversion()
nuke_landmine.icons[1].icon=nuke_landmine.icon
nuke_landmine.icons[1].tint=mod_nuke_landmine_tint
data:extend({nuke_landmine})
nuke_landmine=nil

local grid_super_power_armor = util.table.deepcopy(data.raw["equipment-grid"]["large-equipment-grid"])
grid_super_power_armor.name =mod_grid_super_power_armor_name
grid_super_power_armor.width = 16 --10
grid_super_power_armor.height = 16 --10
data:extend({grid_super_power_armor})
grid_super_power_armor=nil

local super_power_armor = util.table.deepcopy(data.raw["armor"]["power-armor-mk2"])
super_power_armor.name         =mod_item_super_power_armor_name
super_power_armor.subgroup     =mod_subgroup_warfare_name
super_power_armor.order        ="c"
super_power_armor.equipment_grid = mod_grid_super_power_armor_name
super_power_armor.resistances =
{
    {
        type = "physical",
        decrease = 20,
        percent = 85
    },
    {
        type = "acid",
        decrease = 20,
        percent = 85
    },
    {
        type = "explosion",
        decrease = 200,
        percent = 85
    },
    {
        type = "fire",
        decrease = 20,
        percent = 85
    }
}
super_power_armor.inventory_size_bonus = 50
super_power_armor.icons = item_icon_to_icons_conversion()
super_power_armor.icons[1].icon=super_power_armor.icon
super_power_armor.icons[1].tint=mod_super_power_armor_tint
data:extend({super_power_armor})
super_power_armor=nil

local infinity_gun_turret_1 = util.table.deepcopy(data.raw["item"]["gun-turret"])
infinity_gun_turret_1.name         =mod_item_infinity_gun_turret_1_name
infinity_gun_turret_1.place_result =mod_entity_infinity_gun_turret_1_name
infinity_gun_turret_1.subgroup     =mod_subgroup_warfare_name
infinity_gun_turret_1.order        ="d1"
infinity_gun_turret_1.stack_size = 100
infinity_gun_turret_1.icons = item_icon_to_icons_conversion()
infinity_gun_turret_1.icons[1].icon=infinity_gun_turret_1.icon
infinity_gun_turret_1.icons[1].tint=mod_infinity_gun_turret_1_tint
data:extend({infinity_gun_turret_1})
infinity_gun_turret_1=nil

local infinity_gun_turret_2 = util.table.deepcopy(data.raw["item"]["gun-turret"])
infinity_gun_turret_2.name         =mod_item_infinity_gun_turret_2_name
infinity_gun_turret_2.place_result =mod_entity_infinity_gun_turret_2_name
infinity_gun_turret_2.subgroup     =mod_subgroup_warfare_name
infinity_gun_turret_2.order        ="d2"
infinity_gun_turret_2.stack_size = 100
infinity_gun_turret_2.icons = item_icon_to_icons_conversion()
infinity_gun_turret_2.icons[1].icon=infinity_gun_turret_2.icon
infinity_gun_turret_2.icons[1].tint=mod_infinity_gun_turret_2_tint
data:extend({infinity_gun_turret_2})
infinity_gun_turret_2=nil

local infinity_gun_turret_3 = util.table.deepcopy(data.raw["item"]["gun-turret"])
infinity_gun_turret_3.name         =mod_item_infinity_gun_turret_3_name
infinity_gun_turret_3.place_result =mod_entity_infinity_gun_turret_3_name
infinity_gun_turret_3.subgroup     =mod_subgroup_warfare_name
infinity_gun_turret_3.order        ="d3"
infinity_gun_turret_3.stack_size = 100
infinity_gun_turret_3.icons = item_icon_to_icons_conversion()
infinity_gun_turret_3.icons[1].icon=infinity_gun_turret_3.icon
infinity_gun_turret_3.icons[1].tint=mod_infinity_gun_turret_3_tint
data:extend({infinity_gun_turret_3})
infinity_gun_turret_3=nil

local long_range_laser = util.table.deepcopy(data.raw["item"]["laser-turret"])
long_range_laser.name         =mod_item_long_range_laser_name
long_range_laser.place_result =mod_entity_long_range_laser_name
long_range_laser.subgroup     =mod_subgroup_warfare_name
long_range_laser.order        ="d4"
long_range_laser.stack_size = 100
long_range_laser.icons = item_icon_to_icons_conversion()
long_range_laser.icons[1].icon=long_range_laser.icon
long_range_laser.icons[1].tint=mod_long_range_laser_tint
data:extend({long_range_laser})
long_range_laser=nil

local power_laser = util.table.deepcopy(data.raw["item"]["laser-turret"])
power_laser.name         =mod_item_power_laser_name
power_laser.place_result =mod_entity_power_laser_name
power_laser.subgroup     =mod_subgroup_warfare_name
power_laser.order        ="d5"
power_laser.stack_size = 100
power_laser.icons = item_icon_to_icons_conversion()
power_laser.icons[1].icon=power_laser.icon
power_laser.icons[1].tint=mod_power_laser_tint
data:extend({power_laser})
power_laser=nil

local overclocked_radar = util.table.deepcopy(data.raw["item"]["radar"])
overclocked_radar.name         =mod_item_overclocked_radar_name
overclocked_radar.place_result =mod_entity_overclocked_radar_name
overclocked_radar.subgroup     =mod_subgroup_warfare_name
overclocked_radar.order        ="e"
overclocked_radar.stack_size = 100
overclocked_radar.icons = item_icon_to_icons_conversion()
overclocked_radar.icons[1].icon=overclocked_radar.icon
overclocked_radar.icons[1].tint=mod_overclocked_radar_tint
data:extend({overclocked_radar})
overclocked_radar=nil

local infinity_rocket_turret_1 = util.table.deepcopy(data.raw["item"]["laser-turret"])
infinity_rocket_turret_1.name         =mod_item_infinity_rocket_turret_1_name
infinity_rocket_turret_1.place_result =mod_entity_infinity_rocket_turret_1_name
infinity_rocket_turret_1.subgroup     =mod_subgroup_warfare_name
infinity_rocket_turret_1.order        ="d6"
infinity_rocket_turret_1.stack_size = 100
infinity_rocket_turret_1.icons = item_icon_to_icons_conversion()
infinity_rocket_turret_1.icons[1].icon=mod_infinity_rocket_turret_icon
infinity_rocket_turret_1.icons[1].tint=mod_infinity_rocket_turret_1_tint
data:extend({infinity_rocket_turret_1})
infinity_rocket_turret_1=nil

local infinity_rocket_turret_2 = util.table.deepcopy(data.raw["item"]["laser-turret"])
infinity_rocket_turret_2.name         =mod_item_infinity_rocket_turret_2_name
infinity_rocket_turret_2.place_result =mod_entity_infinity_rocket_turret_2_name
infinity_rocket_turret_2.subgroup     =mod_subgroup_warfare_name
infinity_rocket_turret_2.order        ="d7"
infinity_rocket_turret_2.stack_size = 100
infinity_rocket_turret_2.icons = item_icon_to_icons_conversion()
infinity_rocket_turret_2.icons[1].icon=mod_infinity_rocket_turret_icon
infinity_rocket_turret_2.icons[1].tint=mod_infinity_rocket_turret_2_tint
data:extend({infinity_rocket_turret_2})
infinity_rocket_turret_2=nil

local infinity_rocket_turret_3 = util.table.deepcopy(data.raw["item"]["laser-turret"])
infinity_rocket_turret_3.name         =mod_item_infinity_rocket_turret_3_name
infinity_rocket_turret_3.place_result =mod_entity_infinity_rocket_turret_3_name
infinity_rocket_turret_3.subgroup     =mod_subgroup_warfare_name
infinity_rocket_turret_3.order        ="d8"
infinity_rocket_turret_3.stack_size = 100
infinity_rocket_turret_3.icons = item_icon_to_icons_conversion()
infinity_rocket_turret_3.icons[1].icon=mod_infinity_rocket_turret_icon
infinity_rocket_turret_3.icons[1].tint=mod_infinity_rocket_turret_3_tint
data:extend({infinity_rocket_turret_3})
infinity_rocket_turret_3=nil

local hardened_wall = util.table.deepcopy(data.raw["item"]["stone-wall"])
hardened_wall.icon         =mod_hardened_wall_icon
hardened_wall.name         =mod_item_hardened_wall_name
hardened_wall.place_result =mod_entity_hardened_wall_name
hardened_wall.subgroup     =mod_subgroup_warfare_name
hardened_wall.order        ="a0"
hardened_wall.stack_size = 200
hardened_wall.icons = item_icon_to_icons_conversion()
hardened_wall.icons[1].icon=hardened_wall.icon
hardened_wall.icons[1].tint=mod_hardened_wall_tint
data:extend({hardened_wall})
hardened_wall=nil