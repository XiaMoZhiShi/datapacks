scoreboard players add @s ne_race_time 1
scoreboard players operation $sourceTick nife_stats = @s ne_race_time
function nifeather:modules/time/default

title @s actionbar {"translate":"text.hub.hint", "with":["\uE25A", [{"nbt":"Output", "storage": "nifeather:modules.time", "interpret": true}]]}

execute if block ~ ~-1.5 ~ blue_concrete run function nifeather_extras:race/mark/boot