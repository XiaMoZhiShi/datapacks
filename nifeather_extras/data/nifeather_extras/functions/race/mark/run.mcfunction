#execute if entity @s[tag=!__ne_racer] run tellraw @a {"translate":"text.hub.hint", "with":["?", [{"selector":"@s"}, "已出发"]]}
scoreboard players set @s[tag=!__ne_racer] ne_race_marks -1
scoreboard players set @s[tag=!__ne_racer] ne_race_time 0

tag @s add __ne_racer
#declare tag __ne_racer 冰船赛选手

tag @s remove __ne_racer_queue
#declare tag __ne_racer_queue 队列中

tag @s remove __ne_canTrigger
#declare tag __ne_canTrigger 选手是否能触发计圈

#+1圈
scoreboard players add @s ne_race_marks 1

execute if score @s ne_race_marks matches 3 run function nifeather_extras:race/end

scoreboard players operation $sourceTick nife_stats = @s ne_race_time
function nifeather:modules/time/default
execute if entity @s[tag=__ne_racer, scores={ne_race_marks=1..}] run tellraw @a {"translate":"text.hub.hint", "with":["\uE25A", [{"selector":"@s"}, "第", {"score":{"objective":"ne_race_marks", "name":"@s"}}, "圈, 总用时", {"nbt":"Output", "storage": "nifeather:modules.time", "interpret": true}]]}
execute if entity @s[tag=__ne_racer, scores={ne_race_marks=0}] run tellraw @a {"translate":"text.hub.hint", "with":["\uE25A", [{"selector":"@s"}, "已开始"]]}