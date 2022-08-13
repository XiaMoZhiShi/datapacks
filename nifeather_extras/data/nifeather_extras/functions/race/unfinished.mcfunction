tag @s remove __ne_racer

scoreboard players operation $sourceTick nife_stats = @s ne_race_time
function nifeather:modules/time/default

title @s actionbar {"translate":"text.hub.hint", "color":"red", "with":["\uE25A", [{"nbt":"Output", "storage": "nifeather:modules.time", "interpret": true}]]}
tellraw @a {"translate":"text.hub.hint", "color":"red", "with":["\uE25A", [{"selector":"@s"}, "未完成, ","第", {"score":{"objective":"ne_race_marks", "name":"@s"}}, "圈, 总用时", {"nbt":"Output", "storage": "nifeather:modules.time", "interpret": true}]]}

scoreboard players reset @s ne_race_marks