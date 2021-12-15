execute as @a at @s if predicate nifeather_extras:light_below_7 run function nifeather_extras:limbo/apply_attribute
execute as @a at @s unless predicate nifeather_extras:light_below_7 run function nifeather_extras:limbo/undo_attribute

execute in nifeather_extras:limbo positioned 0 0 0 run function nifeather_extras:limbo/limbo_run