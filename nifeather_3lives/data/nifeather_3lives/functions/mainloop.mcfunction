execute as @a at @s run function nifeather_3lives:titles/loop_titles
execute as @a at @s run function nifeather_3lives:titles/loop_subtitles

execute as @a[tag=n3l_itemThrownAway] at @s as @e[type=item, nbt={Item:{id:"minecraft:knowledge_book"}}, limit=1, sort=nearest, distance=..3] at @s run function nifeather_3lives:misc/totem_recipe/itemfix
execute as @a[tag=n3l_itemThrownAway] run tag @s remove n3l_itemThrownAway

tag @a[tag=n3l_curedThisTick] remove n3l_curedThisTick


execute as @a[scores={n3l_settings_trigger=1..}] run function nifeather_3lives:settings/trigger/ontrigger