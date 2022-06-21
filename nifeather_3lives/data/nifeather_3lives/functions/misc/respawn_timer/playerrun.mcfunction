#region 更新剩余时间
#clock - lastDeathTime = target
scoreboard players operation @s n3l_respawnTimeRemain = clock nife_stats
scoreboard players operation @s n3l_respawnTimeRemain -= @s n3l_lastDeathTime

#216000 - target = remain
scoreboard players operation $TEMP n3l_respawnTimeRemain = #n3l_respawnTick nife_stats
scoreboard players operation $TEMP n3l_respawnTimeRemain -= @s n3l_respawnTimeRemain
execute if score $TEMP n3l_respawnTimeRemain matches ..-1 run scoreboard players set $TEMP n3l_respawnTimeRemain 0
scoreboard players operation @s n3l_respawnTimeRemain = $TEMP n3l_respawnTimeRemain
scoreboard players set $TEMP n3l_respawnTimeRemain -1

#endregion
#region 更新剩余时间显示
#declare entity $HOTBARTEMP 用于给Hotbar显示的临时变量

#分钟
scoreboard players operation @s n3l_rTRDisplayMinute = @s n3l_respawnTimeRemain
scoreboard players operation @s n3l_rTRDisplayMinute /= #n3l_ticksPerMin nife_stats
scoreboard players operation @s n3l_rTRDisplayMinute %= #n3l_minsPerHr nife_stats

#秒
scoreboard players operation @s n3l_rTRDisplaySecond = @s n3l_respawnTimeRemain
scoreboard players operation @s n3l_rTRDisplaySecond /= #n3l_ticksPerSec nife_stats
scoreboard players operation @s n3l_rTRDisplaySecond %= #n3l_secsPerMin nife_stats

#小时
scoreboard players operation @s n3l_rTRDisplayHour = @s n3l_respawnTimeRemain
scoreboard players operation @s n3l_rTRDisplayHour /= #n3l_ticksPerHr nife_stats

#, {"score":{"objective": "n3l_rTRDisplaySecond","name":"@s"}}
execute unless score @s n3l_respawnTimeRemain matches ..71999 run title @s actionbar                                                  {"translate": "text.hub.hint", "color":"#f0f0f0", "with":["\uE323", {"text":"","extra":[{"score":{"objective": "n3l_rTRDisplayHour","name":"@s"}}, "小时 ", {"score":{"objective": "n3l_rTRDisplayMinute","name":"@s"}}, "分钟"]}]}
execute unless score @s n3l_respawnTimeRemain matches ..1199 if score @s n3l_respawnTimeRemain matches ..71999 run title @s actionbar {"translate": "text.hub.hint", "color":"#f0f0f0", "with":["\uE323", {"text":"","extra":[{"score":{"objective": "n3l_rTRDisplayMinute","name":"@s"}}, "分钟"]}]}

##整活（
#execute unless score @s n3l_respawnTimeRemain matches ..959 if score @s n3l_respawnTimeRemain matches ..1199 run title @s actionbar        {"translate": "text.hub.hint", "color":"#f0f0f0", "with":["\uE323", "不到一分钟"]}
#execute unless score @s n3l_respawnTimeRemain matches ..719 if score @s n3l_respawnTimeRemain matches ..959 run title @s actionbar        {"translate": "text.hub.hint", "color":"#f0f0f0", "with":["\uE323", "不到一分钟 | 准备措辞..."]}
#execute unless score @s n3l_respawnTimeRemain matches ..479 if score @s n3l_respawnTimeRemain matches ..719 run title @s actionbar        {"translate": "text.hub.hint", "color":"#f0f0f0", "with":["\uE323", "不到一分钟 | 抚摸山羊..."]}
#execute unless score @s n3l_respawnTimeRemain matches ..239 if score @s n3l_respawnTimeRemain matches ..479 run title @s actionbar        {"translate": "text.hub.hint", "color":"#f0f0f0", "with":["\uE323", "不到一分钟 | 和小翎小姐(?)通电话..."]}
#execute unless score @s n3l_respawnTimeRemain matches ..0 if score @s n3l_respawnTimeRemain matches ..239 run title @s actionbar        {"translate": "text.hub.hint", "color":"#f0f0f0", "with":["\uE323", "不到一分钟 | 马上就好..."]}
#execute if score @s n3l_respawnTimeRemain matches ..0 run title @s actionbar                                                             {"translate": "text.hub.hint", "color":"#f0f0f0", "with":["\uE323", "欢迎回来！"]}

execute unless score @s n3l_respawnTimeRemain matches ..239 if score @s n3l_respawnTimeRemain matches ..1199 run title @s actionbar {"translate": "text.hub.hint", "color":"#f0f0f0", "with":["\uE323", "不到一分钟"]}
execute if score @s n3l_respawnTimeRemain matches ..0 run title @s actionbar                                                        {"translate": "text.hub.hint", "color":"#f0f0f0", "with":["\uE323", "欢迎回来！"]}
#endregion 更新剩余时间显示

execute if score @s n3l_respawnTimeRemain matches ..0 run function nifeather_3lives:misc/respawn_timer/player_dorespawn