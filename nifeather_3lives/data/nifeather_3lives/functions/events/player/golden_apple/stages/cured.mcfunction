attribute @s generic.max_health modifier remove 0-0-1-0-0
attribute @s generic.max_health modifier remove 0-0-1-0-1
scoreboard players set @s n3l_lives 3

particle minecraft:happy_villager ~ ~0.9 ~ 1 0.9 1 1 100
playsound entity.villager.celebrate player @s ~ ~ ~
tag @s remove n3l_curing

function nifeather_3lives:titles/set_titles