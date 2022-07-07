tag @s remove proc

#region 随机跟随距离
#从UUID取随机数
execute store result score @s nrr_temp run data get entity @s UUID[0]
scoreboard players operation @s nrr_temp %= $nrr_rabbitMaxFR nrr_stats

#最小值、存进storage
execute if score @s nrr_temp matches ..16 run scoreboard players set @s nrr_temp 16
execute store result storage nrr RBAT.Base double 1 run scoreboard players get @s nrr_temp

#从storage合并数据并处理计分板
data modify entity @s Attributes[0] merge from storage nrr RBAT
scoreboard players reset @s
#endregion

attribute @s generic.max_health base set 5
effect give @s instant_health 10 20 true

#粒子
particle minecraft:cloud ~ ~.1 ~ 0 0 0 0.1 5