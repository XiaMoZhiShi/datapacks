#通过marker获取持续时间
summon marker ~ ~ ~ {Tags:["n3l_sec_random"]}

execute store result score @s n3l_subrandom_temp run data get entity @e[type=marker, tag=n3l_sec_random, sort=nearest, limit=1] UUID[0]
kill @e[type=marker, tag=n3l_sec_random, sort=nearest, limit=1]

#和31求余确保时间限制在30秒以内
scoreboard players operation @s n3l_subrandom_temp %= #31 nife_stats

#先除5再加5这样确保持续时间总是5的倍数
scoreboard players operation @s n3l_subrandom_temp /= #5 nife_stats
scoreboard players operation @s n3l_subrandom_temp *= #5 nife_stats

execute if score @s n3l_subrandom_temp matches ..4 run scoreboard players set @s n3l_subrandom_temp 5

#秒转刻
scoreboard players operation @s n3l_subrandom_temp *= #20 nife_stats

#存储
scoreboard players operation @s n3l_subrandom_timer = @s n3l_subrandom_temp

#重置temp
scoreboard players reset @s n3l_subrandom_temp