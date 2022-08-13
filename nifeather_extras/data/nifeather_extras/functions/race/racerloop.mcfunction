scoreboard players add @s ne_race_time 1
scoreboard players operation $sourceTick nife_stats = @s ne_race_time
function nifeather:modules/time/default

title @s actionbar {"translate":"text.hub.hint", "with":["?", [{"nbt":"Output", "storage": "nifeather:modules.time", "interpret": true}]]}