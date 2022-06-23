function nifeather_3lives:tools/reset_lives
function nifeather_3lives:tools/revoke_all_armor
function nifeather_3lives:misc/respawn_timer/player_dorespawn

tag @s remove n3l_init_done
scoreboard players reset @s n3l_patchlevel
scoreboard players reset @s n3l_maxLives
scoreboard players reset @s n3l_lastDeathTime
scoreboard players reset @s n3l_armorLevel

tag @s remove n3l_specator
tag @s remove n3l_specator_ready
tag @s remove n3l_respawnedonce
tag @s remove n3l_curing

execute if entity @s[gamemode=spectator] run gamemode survival @s

execute if entity @s[tag=all] run advancement revoke @s only story/obtain_armor
execute if entity @s[tag=all] run advancement revoke @s only story/shiny_gear
execute if entity @s[tag=all] run advancement revoke @s only nether/netherite_armor
execute if entity @s[tag=all] run tellraw @s {"translate":"text.hub.hint", "with":["N3L", "因为有all标签，将一并重置原版盔甲进度"]}

tag @s remove all

tellraw @s {"translate":"text.hub.hint", "with":["N3L", "完成"]}