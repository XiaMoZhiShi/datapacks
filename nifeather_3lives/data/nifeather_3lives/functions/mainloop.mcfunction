execute as @a at @s run function nifeather_3lives:titles/loop_titles
execute as @a at @s run function nifeather_3lives:titles/loop_subtitles

execute as @a[tag=n3l_itemThrownAway] at @s as @e[type=item, nbt={Item:{id:"minecraft:knowledge_book"}}, limit=1, sort=nearest] at @s run function nifeather_3lives:misc/totem_recipe/itemfix
execute as @a[tag=n3l_itemThrownAway] run tag @s remove n3l_itemThrownAway