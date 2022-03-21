execute if score debug nife_stats matches 1 run tellraw @a[tag=admin] [{"text": "[DEBUG] ", "color": "gray"}, "OnPlayerRespawn: ", {"selector": "@s"}]

#重置属性修改器
attribute @s generic.max_health modifier remove 0-0-0-2-0
attribute @s generic.movement_speed modifier remove 0-0-0-3-0
attribute @s generic.attack_speed modifier remove 0-0-0-4-0
attribute @s generic.attack_damage modifier remove 0-0-0-5-0
attribute @s generic.armor modifier remove 0-0-0-6-0
attribute @s generic.attack_speed modifier remove 0-0-0-7-0
attribute @s generic.armor modifier remove 0-0-0-8-0
attribute @s generic.max_health modifier remove 0-0-0-9-0
attribute @s generic.luck modifier remove 0-0-0-11-0
attribute @s generic.luck modifier remove 0-0-0-11-1
attribute @s generic.luck modifier remove 0-0-0-12-0
attribute @s generic.luck modifier remove 0-0-0-12-1
tag @s remove blind

#属性应用
gamemode survival @s
execute if score @s nife_lives <= #0 nife_lives run function nifeather_3lives:attributes/lives/0

title @s times 0 5 5

#重生事件
execute if entity @s[gamemode=!spectator] run function nifeather_3lives:deathevents/give_death_event_run
execute if entity @s[gamemode=spectator] run function nifeather_3lives:events/on_spectator_respawn

execute if entity @s[tag=nife_curing] run attribute @s generic.max_health modifier add 0-0-1-0-1 "nife_reduce_health" -0.6 multiply
effect give @s instant_health