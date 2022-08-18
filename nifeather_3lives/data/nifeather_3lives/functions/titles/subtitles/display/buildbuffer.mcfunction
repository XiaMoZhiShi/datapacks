#重置Buffer
data modify storage nifeather:n3l SubtitleTextBuffer set value []

#region 触发器 -- 描述
execute if entity @s[tag=n3l_stT_healthfit] run data modify storage nifeather:n3l SubtitleTextBuffer append value '{"text":"生命值大于12时疾跑将"}'
execute if entity @s[tag=n3l_stT_healthlow] run data modify storage nifeather:n3l SubtitleTextBuffer append value '{"text":"生命值低于5时，"}'
execute if entity @s[tag=n3l_stT_enemycount] run data modify storage nifeather:n3l SubtitleTextBuffer append value '{"text":"周围存在至少3名敌人时，"}'
#endregion

#region 效果
execute if entity @s[tag=n3l_stE_movement] run data modify storage nifeather:n3l SubtitleTextBuffer append value '{"text":"提升移动速度"}'
execute if entity @s[tag=n3l_stE_battle] run data modify storage nifeather:n3l SubtitleTextBuffer append value '{"text":"提升攻击伤害和速度"}'
execute if entity @s[tag=n3l_stE_attack_speed] run data modify storage nifeather:n3l SubtitleTextBuffer append value '{"text":"大幅提升攻击速度"}'
execute if entity @s[tag=n3l_stE_cure] run data modify storage nifeather:n3l SubtitleTextBuffer append value '{"text":"恢复一定生命并提升移动速度"}'
#endregion

#region CD限制
execute if entity @s[tag=n3l_stCD_1m] run data modify storage nifeather:n3l SubtitleTextBuffer append value '{"text":"，每1分钟最多触发一次"}'
execute if entity @s[tag=n3l_stCD_2m] run data modify storage nifeather:n3l SubtitleTextBuffer append value '{"text":"，每2分钟最多触发一次"}'
#endregion

#region 持续时间
scoreboard players operation $sourceTick nife_stats = @s n3l_subrandom_timer
function nifeather:modules/time/default
data modify storage nifeather:n3l SubtitleTextBuffer append value '["，持续", {"nbt":"Output", "storage": "nifeather:modules.time", "interpret": true}]'
#endregion

#推到Output
data modify storage nifeather:n3l Output set value '["", {"nbt":"SubtitleTextBuffer[0]", "storage": "nifeather:n3l", "interpret": true}, {"nbt":"SubtitleTextBuffer[1]", "storage": "nifeather:n3l", "interpret": true}, {"nbt":"SubtitleTextBuffer[2]", "storage": "nifeather:n3l", "interpret": true}, {"nbt":"SubtitleTextBuffer[3]", "storage": "nifeather:n3l", "interpret": true}, {"nbt":"SubtitleTextBuffer[4]", "storage": "nifeather:n3l", "interpret": true}]'