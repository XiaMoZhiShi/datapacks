attribute @s generic.max_health modifier remove 0-0-1-0-0
attribute @s generic.max_health modifier remove 0-0-1-0-1
scoreboard players set @s n3l_lives 3

particle minecraft:happy_villager ~ ~0.9 ~ 1 0.9 1 1 100
playsound entity.villager.celebrate player @s ~ ~ ~
tag @s remove n3l_curing
tag @s add n3l_curedThisTick

#如果治疗先执行，那么治愈的时候道具会触发
#如果道具先执行，那么
#declare tag n3l_curedThisTick 玩家在此游戏刻被治愈，workaround：有时金苹果事件会被触发两次（一次治疗一次道具，我们暂时还没法确定这两个哪一个会先执行。）

tellraw @s {"translate":"text.hub.hint","color":"#dddddd", "with":["\uE2B6", "成功治愈，这次请多留意生命值变化～"]}

function nifeather_3lives:titles/set_titles