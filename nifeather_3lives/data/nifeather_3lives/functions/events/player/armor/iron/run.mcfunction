#设置最大生命
scoreboard players set @s n3l_maxLives 10

#设置盔甲等级
scoreboard players set @s n3l_armorLevel 1

#提醒玩家
execute unless entity @s[tag=n3l_applyingPatch] run function nifeather_3lives:events/player/armor/notifychange

#设置生命数
execute if score @s nife_lives > @s n3l_maxLives run scoreboard players operation @s nife_lives = @s n3l_maxLives