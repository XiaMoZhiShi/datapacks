#clock - lastDeathTime = target
scoreboard players operation @s n3l_respawnTimeRemain = clock nife_clock

scoreboard players operation @s n3l_respawnTimeRemain -= @s n3l_lastDeathTime

#216000 - target = remain
scoreboard players operation $TEMP n3l_respawnTimeRemain = #n3l_respawnTick nife_stats
scoreboard players operation $TEMP n3l_respawnTimeRemain -= @s n3l_respawnTimeRemain
execute if score $TEMP n3l_respawnTimeRemain matches ..-1 run scoreboard players set $TEMP n3l_respawnTimeRemain 0
scoreboard players operation @s n3l_respawnTimeRemain = $TEMP n3l_respawnTimeRemain
scoreboard players set $TEMP n3l_respawnTimeRemain -1


#解析时间
function nifeather:modules/time/reset

data modify storage nifeather:settings Time.DoApprox set value true
scoreboard players operation $sourceTick nife_stats = @s n3l_respawnTimeRemain
function nifeather:modules/time/defaultnoreset

#显示
execute if score @s n3l_respawnTimeRemain matches 1200.. run title @s actionbar {"translate": "text.hub.hint", "color":"#f0f0f0", "with":["\uE323", {"nbt":"Output", "storage": "nifeather:modules.time", "interpret": true}]}
execute unless score @s n3l_respawnTimeRemain matches ..0 if score @s n3l_respawnTimeRemain matches ..1199 run title @s actionbar {"translate": "text.hub.hint", "color":"#f0f0f0", "with":["\uE323", "不到一分钟"]}
execute if score @s n3l_respawnTimeRemain matches ..0 run title @s actionbar                                                        {"translate": "text.hub.hint", "color":"#f0f0f0", "with":["\uE323", "欢迎回来！"]}


execute if score @s n3l_respawnTimeRemain matches ..0 run function nifeather_3lives:misc/respawn_timer/player_dorespawn