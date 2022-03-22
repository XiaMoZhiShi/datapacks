execute if score debug nife_stats matches 1 run tellraw @a[tag=admin] [{"text": "[调试] ", "color": "gray"}, "OnPlayerRespawn: ", {"selector": "@s"}]

function nifeather_3lives:attributes/reset_attributes

#属性应用
gamemode survival @s
execute if score @s nife_lives <= #0 nife_lives run function nifeather_3lives:attributes/lives/0

title @s times 0 5 5

#重生事件
execute if entity @s[gamemode=!spectator] run function nifeather_3lives:deathevents/give_death_event_run
execute if entity @s[gamemode=spectator] run function nifeather_3lives:events/on_spectator_respawn

execute if entity @s[tag=nife_curing] run attribute @s generic.max_health modifier add 0-0-1-0-1 "nife_reduce_health" -0.6 multiply
effect give @s instant_health