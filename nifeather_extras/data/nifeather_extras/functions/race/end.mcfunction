tag @s remove __ne_racer

scoreboard players operation $sourceTick nife_stats = @s ne_race_time
function nifeather:modules/time/default

title @s actionbar {"translate":"text.hub.hint", "color":"gold", "with":["\uE25A", [{"nbt":"Output", "storage": "nifeather:modules.time", "interpret": true}]]}
tellraw @a {"translate":"text.hub.hint", "color":"gold", "with":["\uE25A", [{"selector":"@s"}, "已完成, 总用时", {"nbt":"Output", "storage": "nifeather:modules.time", "interpret": true}]]}

scoreboard players reset @s ne_race_marks

execute as @a[tag=__ne_racer] at @s run function nifeather_extras:race/unfinished