advancement revoke @s only nifeather_3lives:mechanics/reroll_title

#declare tag n3l_shouldFail (events/player/reroll/on_activate): 是否应该拒绝激活
#declare tag n3l_failSilent (events/player/reroll/on_activate): 是否应该静默拒绝（玩家治疗的时候不显示“剩余生命过低”的提示）

tag @s add n3l_shouldFail

#如果玩家在治疗中或生命小于1，拒绝激活
execute if score @s[tag=!n3l_curedThisTick, tag=!n3l_curing] n3l_lives matches 1.. run tag @s remove n3l_shouldFail

#治疗过程中静默拒绝
execute if entity @s[tag=!n3l_curedThisTick] run tag @s add n3l_failSilent
execute if entity @s[tag=!n3l_curing] run tag @s add n3l_failSilent

#拒绝标签 + 没有静默标签 -> 输出拒绝消息
execute if entity @s[tag=n3l_shouldFail, tag=!n3l_failSilent] run function nifeather_3lives:events/player/reroll/state/fail

#没有拒绝标签 -> 执行
execute unless entity @s[tag=n3l_shouldFail] run function nifeather_3lives:events/player/reroll/state/pass

tag @s remove n3l_shouldFail
tag @s remove n3l_failSilent