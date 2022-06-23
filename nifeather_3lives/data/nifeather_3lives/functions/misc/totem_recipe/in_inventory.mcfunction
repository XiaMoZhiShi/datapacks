loot spawn ~ ~ ~ loot nifeather_3lives:fishing/reroll_pool
data modify entity @e[type=item, sort=nearest, limit=1] PickupDelay set value 0
data modify entity @e[type=item, sort=nearest, limit=1] Invulnerable set value true
execute as @e[type=item, sort=nearest, limit=1] run function nifeather_3lives:misc/totem_recipe/item_make_unstackable