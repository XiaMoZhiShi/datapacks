execute if score debug nife_stats matches 1 run tellraw @a[tag=admin] [{"text": "[调试] ", "color": "gray"}, "OnPlayerRespawn: ", {"selector": "@s"}]

function nifeather_3lives:tools/reset_attributes

#属性应用
gamemode survival @s
execute if score @s nife_lives <= #0 nife_lives run function nifeather_3lives:events/player/respawn/types/ran_out_of_lives

title @s times 0 5 5

#重生事件
execute if entity @s[gamemode=!spectator] run function nifeather_3lives:titles/set_titles
execute if entity @s[gamemode=spectator] run function nifeather_3lives:events/player/respawn/types/spectator_respawn

execute if entity @s[tag=nife_curing] run attribute @s generic.max_health modifier add 0-0-1-0-1 "nife_reduce_health" -0.6 multiply
effect give @s instant_health