#上限提升，重置生命
execute if score @s n3l_armorLevel matches 0 run function nifeather_3lives:events/player/armor/init/run
execute if score @s n3l_armorLevel matches 1 run function nifeather_3lives:events/player/armor/iron/run
execute if score @s n3l_armorLevel matches 2 run function nifeather_3lives:events/player/armor/diamond/run
execute if score @s n3l_armorLevel matches 3 run function nifeather_3lives:events/player/armor/netherite/run

#补上缺少的生命
execute if score @s n3l_lives < @s n3l_maxLives if score @s n3l_armorLevel matches 0..2 run scoreboard players add @s n3l_lives 5
execute if score @s n3l_lives < @s n3l_maxLives if score @s n3l_armorLevel matches 3 run scoreboard players add @s n3l_lives 2

scoreboard players set @s n3l_patchlevel 3