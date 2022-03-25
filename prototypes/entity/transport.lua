require("__FunPlay__/global")

local inserter = util.table.deepcopy(data.raw["inserter"]["burner-inserter"])
inserter.name=mod_entity_electric_inserter_name
inserter.minable.result=mod_item_electric_inserter_name
inserter.energy_source =
{
  type = "electric",
  usage_priority = "secondary-input",
  drain = "1kW" --"0.4kW"
}
inserter.energy_per_movement = "10kJ" --"5kJ"
inserter.energy_per_rotation = "10kJ" --"5kJ"
inserter.extension_speed = 0.5 --0.03 fast 0.07
inserter.rotation_speed = 0.7 --0.014 fast 0.04
inserter.next_upgrade = nil
inserter.hand_base_picture.tint=mod_electric_inserter_tint
inserter.hand_base_picture.hr_version.tint=mod_electric_inserter_tint
inserter.hand_closed_picture.tint=mod_electric_inserter_tint
inserter.hand_closed_picture.hr_version.tint=mod_electric_inserter_tint
inserter.hand_open_picture.tint=mod_electric_inserter_tint
inserter.hand_open_picture.hr_version.tint=mod_electric_inserter_tint
inserter.platform_picture.sheet.tint=mod_electric_inserter_tint
inserter.platform_picture.sheet.hr_version.tint=mod_electric_inserter_tint
data:extend({inserter})
inserter = nil

local stack_inserter = util.table.deepcopy(data.raw["inserter"]["stack-inserter"])
stack_inserter.name=mod_entity_electric_stack_inserter_name
stack_inserter.minable.result=mod_item_electric_stack_inserter_name
stack_inserter.energy_per_movement = "40KJ" --"20KJ"
stack_inserter.energy_per_rotation = "40KJ" --"20KJ"
stack_inserter.energy_source.drain = "1kW" --"1kW"
stack_inserter.extension_speed = 0.5 --0.07
stack_inserter.rotation_speed = 0.7 --0.04
stack_inserter.next_upgrade = nil
stack_inserter.hand_base_picture.tint=mod_electric_stack_inserter_tint
stack_inserter.hand_base_picture.hr_version.tint=mod_electric_stack_inserter_tint
stack_inserter.hand_closed_picture.tint=mod_electric_stack_inserter_tint
stack_inserter.hand_closed_picture.hr_version.tint=mod_electric_stack_inserter_tint
stack_inserter.hand_open_picture.tint=mod_electric_stack_inserter_tint
stack_inserter.hand_open_picture.hr_version.tint=mod_electric_stack_inserter_tint
stack_inserter.platform_picture.sheet.tint=mod_electric_stack_inserter_tint
stack_inserter.platform_picture.sheet.hr_version.tint=mod_electric_stack_inserter_tint
data:extend({stack_inserter})
stack_inserter = nil

local electric_pole = util.table.deepcopy(data.raw["electric-pole"]["medium-electric-pole"])
electric_pole.name=mod_entity_electric_pole_name
electric_pole.minable.result=mod_item_electric_pole_name
electric_pole.maximum_wire_distance = 30 --9
electric_pole.supply_area_distance = 15 --3.5
electric_pole.pictures.layers[1].tint=mod_electric_pole_tint
data:extend({electric_pole})
electric_pole = nil

local large_roboport = util.table.deepcopy(data.raw["roboport"]["roboport"])
large_roboport.name=mod_entity_large_roboport_name
large_roboport.minable.result=mod_item_large_roboport_name
large_roboport.energy_source.input_flow_limit= "160MW" --"5MW"
large_roboport.energy_source.buffer_capacity= "250MJ" --"100MJ"
large_roboport.recharge_minimum = "50MJ" --"40MJ" no comment
large_roboport.energy_usage = "300kW" --"50kW" The amount of energy the roboport uses when idle.
large_roboport.robot_slots_count = 5 --7
large_roboport.material_slots_count = 5 --7
large_roboport.charging_energy = "10MW" --"1000kW" The amount of energy that is given to a robot per tick.
large_roboport.logistics_radius = 100 --25
large_roboport.construction_radius = 100 --55
large_roboport.charging_offsets = --{-1.5, -0.5}, {1.5, -0.5}, {1.5, 1.5}, {-1.5, 1.5}
{
    {0.5, 1.5},
    {1.5, -0.5},
    {-0.5, -1.5},
    {-1.5, 0.5},
    {1, 1},
    {1, -1},
    {-1, -1},
    {-1, 1},
    {0.5, 0.5},
    {0.5, -0.5},
    {-0.5, 0.5},
    {-0.5, -0.5},
    {0.5, 0.7},
    {0.7, -0.5},
    {-0.5, -0.7},
    {-7.7, 0.5},
}
large_roboport.base.layers[1].tint=mod_large_roboport_tint
data:extend({large_roboport})
large_roboport = nil

