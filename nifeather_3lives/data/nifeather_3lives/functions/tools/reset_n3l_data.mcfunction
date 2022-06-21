function nifeather_3lives:tools/reset_lives
function nifeather_3lives:tools/revoke_all_armor

tag @s remove 3livesinit
scoreboard players reset @s n3l_patchlevel
scoreboard players reset @s n3l_maxLives
scoreboard players reset @s n3l_lastDeathTime

execute if entity @s[tag=all] run advancement revoke @s only story/obtain_armor
execute if entity @s[tag=all] run advancement revoke @s only story/shiny_gear
execute if entity @s[tag=all] run advancement revoke @s only nether/netherite_armor
tellraw @s {"translate":"text.hub.hint", "with":["N3L", "因为有all标签，将一并重置原版盔甲进度"]}

tag @s remove all

tellraw @s {"translate":"text.hub.hint", "with":["N3L", "完成"]}