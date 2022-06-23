execute if score debug nife_stats matches 1 run tellraw @a[tag=admin] [{"text": "[调试] ", "color": "gray"}, "OnPlayerRespawn: ", {"selector": "@s"}]

function nifeather_3lives:tools/reset_attributes

#declare tag n3l_specator 是否为生命用完的旁观者
execute if entity @s[tag=n3l_specator_ready] run tag @s add n3l_specator

title @s times 0 5 5

#重生事件
execute if entity @s[tag=!n3l_specator] run function nifeather_3lives:titles/set_titles
execute if entity @s[tag=n3l_specator] run function nifeather_3lives:events/player/respawn/types/spectator_respawn

execute if entity @s[tag=n3l_curing] run attribute @s generic.max_health modifier add 0-0-1-0-1 "nife_reduce_health" -0.6 multiply
effect give @s instant_health

tag @s remove n3l_specator_ready