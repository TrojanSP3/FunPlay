require("__FunPlay__/global")
local base_sounds = require ("__base__.prototypes.entity.sounds")
local base_hit_effects = require ("__base__.prototypes.entity.hit-effects")
require ("__base__.prototypes.entity.character-animations")

require ("__base__.prototypes.entity.spawner-animation")
require ("__base__.prototypes.entity.biter-animations")

local slasher_scale = 0.5
local slasher = util.table.deepcopy(data.raw["unit"]["small-biter"])
slasher.name = mod_entity_slasher_name
slasher.max_health = 30 --15
slasher.healing_per_tick = 0.01 --0.01
slasher.attack_parameters.range=0.5 --0.5
slasher.attack_parameters.cooldown=35 --35
slasher.movement_speed = 0.6 --0.2
slasher.run_animation = biterrunanimation(slasher_scale, mod_slasher_tint_1, mod_slasher_tint_2)
slasher.attack_parameters.animation = biterattackanimation(slasher_scale, mod_slasher_tint_1, mod_slasher_tint_2)
data:extend({slasher})
slasher = nil

local slasher_spawner = util.table.deepcopy(data.raw["unit-spawner"]["biter-spawner"])
slasher_spawner.name = mod_entity_slasher_spawner_name
slasher_spawner.max_health = 500 --350
slasher_spawner.healing_per_tick = 0.01 --0.02
slasher_spawner.resistances = nil
slasher_spawner.max_count_of_owned_units = 10 --7
slasher_spawner.max_friends_around_to_spawn = 7 --5
slasher_spawner.result_units = {{ mod_entity_slasher_name, {{0, 1}} }}
slasher_spawner.spawning_cooldown = {200, 200} --{360, 150}
slasher_spawner.spawning_radius = 10 --10
slasher_spawner.spawning_spacing = 3 --3
slasher_spawner.spawn_decorations_on_expansion = false
slasher_spawner.spawn_decoration=nil
slasher_spawner.autoplace=nil
slasher_spawner.pollution_absorption_absolute = 0 --20
slasher_spawner.pollution_absorption_proportional = 0 --0.01
slasher_spawner.animations =
{
    spawner_idle_animation(0, mod_slasher_spawner_tint),
    spawner_idle_animation(1, mod_slasher_spawner_tint),
    spawner_idle_animation(2, mod_slasher_spawner_tint),
    spawner_idle_animation(3, mod_slasher_spawner_tint)
}
slasher_spawner.create_ghost_on_death = false
data:extend({slasher_spawner})
slasher_spawner = nil

local gunner_corpse = util.table.deepcopy(data.raw["character-corpse"]["character-corpse"])
gunner_corpse.type = "corpse"
gunner_corpse.selectable_in_game = false
gunner_corpse.time_before_removed = 15 * 60 * 60
gunner_corpse.name = mod_entity_gunner_corpse_name
gunner_corpse.ground_patch = gunner_corpse.pictures
gunner_corpse.ground_patch[1].layers[1].tint = mod_gunner_tint
gunner_corpse.ground_patch[2].layers[1].tint = mod_gunner_tint
gunner_corpse.ground_patch[3].layers[1].tint = mod_gunner_tint
data:extend({gunner_corpse})
gunner_corpse = nil

local gunner_idle_animation = 
{
  layers=
  {
    util.copy(character_animations.level1.idle_gun),
    util.copy(character_animations.level1.idle_mask),
    util.copy(character_animations.level1.idle_shadow)
  }
}
gunner_idle_animation.layers[1].tint = mod_gunner_tint

local gunner_run_animation = 
{
  layers=
  {
    util.copy(character_animations.level1.running_gun),
    util.copy(character_animations.level1.running_gun_mask),
    util.copy(character_animations.level1.running_gun_shadow)
  }
}
gunner_run_animation.layers[1].tint = mod_gunner_tint

local gunner = {
    type = "unit",
    name = mod_entity_gunner_name,
    icon = "__base__/graphics/icons/small-biter.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "not-repairable", "breaths-air"},
    order = "b-a-a",
    subgroup="enemies",
    max_health = 100,
    healing_per_tick = 0.01,
    resistances = {},
    collision_box = {{-0.2, -0.2}, {0.2, 0.2}},
    selection_box = {{-0.4, -1.4}, {0.4, 0.2}},
    damaged_trigger_effect = base_hit_effects.biter(),
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "bullet",
      cooldown = 8,
      shell_particle =
      {
        name = "shell-particle",
        direction_deviation = 0.1,
        speed = 0.1,
        speed_deviation = 0.03,
        center = {0, 0.1},
        creation_distance = -0.5,
        starting_frame_speed = 0.4,
        starting_frame_speed_deviation = 0.1
      },
      ammo_type = 
      {
        category = "bullet",
        action =
        {
          {
            type = "direct",
            action_delivery =
            {
              {
                type = "instant",
                source_effects =
                {
                  {
                    type = "create-explosion",
                    entity_name = "explosion-gunshot"
                  }
                },
                target_effects =
                {
                  {
                    type = "create-entity",
                    entity_name = "explosion-hit",
                    offsets = {{0, 1}},
                    offset_deviation = {{-0.5, -0.5}, {0.5, 0.5}}
                  },
                  {
                    type = "damage",
                    damage = { amount = 5 , type = "physical"}
                  }
                }
              }
            }
          }
        }
      },
      projectile_creation_distance = 1.125,
      range = 15,
      sound = base_sounds.submachine_gunshot,
      animation = gunner_idle_animation,
      --animation = character_animations.level1.idle_gun,
    },
    vision_distance = 30,
    radar_range = 30,
    movement_speed = 0.1,
    distance_per_frame = 0.13,
    pollution_to_join_attack = 4,
    distraction_cooldown = 300,
    min_pursue_time = 10 * 60,
    max_pursue_distance = 50,
    corpse = mod_entity_gunner_corpse_name,
    dying_explosion = "small-biter-die",
    dying_sound =  base_sounds.roboport_door_open.sound,
    --run_animation = character_animations.level1.running_gun,
    run_animation = gunner_run_animation,
    running_sound_animation_positions = {2,},
    walking_sound = 
    {
        aggregation =
        {
          max_count = 2,
          remove = true
        },
        variations = base_sounds.pebble
    },
    ai_settings = biter_ai_settings,
    water_reflection = biter_water_reflection(small_biter_scale)
  }
data:extend({gunner})
gunner = nil

local base_market = util.table.deepcopy(data.raw["market"]["market"])
local gunner_spawner = util.table.deepcopy(data.raw["unit-spawner"]["biter-spawner"])
gunner_spawner.name = mod_entity_gunner_spawner_name
gunner_spawner.icon = mod_gunner_spawner_icon
gunner_spawner.max_health = 500 --350
gunner_spawner.healing_per_tick = 0 --0.02
gunner_spawner.resistances = nil
gunner_spawner.collision_box = {{-1.4, -1.4}, {1.4, 1.4}}
gunner_spawner.selection_box = {{-1.5, -1.5}, {1.5, 1.5}}
gunner_spawner.pollution_absorption_absolute = 0 --20
gunner_spawner.pollution_absorption_proportional = 0 --0.01
gunner_spawner.spawn_decorations_on_expansion = false
gunner_spawner.spawn_decoration=nil
gunner_spawner.autoplace=nil
gunner_spawner.create_ghost_on_death = false

gunner_spawner.result_units = {{ mod_entity_gunner_name, {{0, 1}} }}
gunner_spawner.max_count_of_owned_units = 5 --7
gunner_spawner.max_friends_around_to_spawn = 5 --5
gunner_spawner.spawning_cooldown = {200, 200} --{360, 150}
gunner_spawner.spawning_radius = 10 --10
gunner_spawner.spawning_spacing = 3 --3

gunner_spawner.corpse  = base_market.corpse
gunner_spawner.damaged_trigger_effect = base_market.damaged_trigger_effect
gunner_spawner.dying_explosion = "medium-explosion"
gunner_spawner.dying_sound = nil
gunner_spawner.working_sound = nil
gunner_spawner.animations = 
{
    filename = base_market.picture.filename,
    priority = "extra-high",
    width = base_market.picture.width,
    height = base_market.picture.height,
    frame_count = 1,
    repeat_count = 1,
    direction_count = 1,
    shift = base_market.picture.shift
}
gunner_spawner.integration = nil

data:extend({gunner_spawner})
gunner_spawner = nil
