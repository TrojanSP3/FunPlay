require("__FunPlay__/global")

local item_group =
{
  type  = "item-group",
  name  = mod_group_items_tab_name,
  order = "zzzzz",
  icons = item_icon_to_icons_conversion(),
  icon_size = 128,
  icon_mipmaps = 2
}
item_group.icons[1].icon=mod_items_tab_icon
item_group.icons[1].tint=mod_items_tab_tint


data:extend(
{
  item_group,
  {
    type  = "item-subgroup",
    name  = mod_subgroup_creative_name,
    group = mod_group_items_tab_name,
    order = "a"
  },
  {
    type  = "item-subgroup",
    name  = mod_subgroup_transport_name,
    group = mod_group_items_tab_name,
    order = "b"
  },
  {
    type  = "item-subgroup",
    name  = mod_subgroup_power_name,
    group = mod_group_items_tab_name,
    order = "c"
  },
  {
    type  = "item-subgroup",
    name  = mod_subgroup_mining_name,
    group = mod_group_items_tab_name,
    order = "d"
  },
  {
    type  = "item-subgroup",
    name  = mod_subgroup_production_name,
    group = mod_group_items_tab_name,
    order = "e"
  },
  {
    type  = "item-subgroup",
    name  = mod_subgroup_modules_name,
    group = mod_group_items_tab_name,
    order = "f"
  },
  {
    type  = "item-subgroup",
    name  = mod_subgroup_warfare_name,
    group = mod_group_items_tab_name,
    order = "g"
  },
  {
    type  = "item-subgroup",
    name  = mod_subgroup_units_name,
    group = mod_group_items_tab_name,
    order = "h"
  },
}
)
