#设置最大生命
scoreboard players set @s n3l_maxLives 20

#设置盔甲等级
scoreboard players set @s n3l_armorLevel 0

#提醒玩家
execute unless entity @s[tag=n3l_applyingPatch] run function nifeather_3lives:events/player/armor/notifychange