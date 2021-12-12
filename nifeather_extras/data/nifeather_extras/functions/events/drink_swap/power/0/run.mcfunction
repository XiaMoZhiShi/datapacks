execute if score @s nife_ods_timer matches 0 run function nifeather_extras:events/drink_swap/generic/random_disguise

scoreboard players set @s nife_ods_timer 2400
function nifeather_extras:events/drink_swap/generic/on_drink_swap_success
impersonate disguise as @p[tag=!ods, distance=..20]
effect give @s nifeather:disguise 120 0 false
title @s subtitle [{"text": "你变成了"}, {"selector": "@s"}]

function nifeather:screens/push/black
playsound minecraft:entity.villager.work_shepherd master @s ~ ~ ~