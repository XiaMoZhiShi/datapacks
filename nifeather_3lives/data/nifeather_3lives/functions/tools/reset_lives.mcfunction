#将玩家生命重置为最大生命
scoreboard players operation @s nife_lives = @s n3l_maxLives

#如果最大生命小于2，那么重置到3
execute unless score @s nife_lives matches 2.. run scoreboard players set @s nife_lives 3

function nifeather_3lives:tools/reset_attributes