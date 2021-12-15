tag @s add BEWarned
tellraw @s {"text":"[警告] 嘿！你是基岩版玩家吗？由于基岩版的限制，y0以下及y256以上的地形暂时不会出现！", "bold": true, "color": "yellow"}
tellraw @s {"text":"[警告] 如果你卡在了y0以下或y256以上，请尝试传送到世界出生点！", "bold": true, "color": "yellow"}
tellraw @s {"text":"[警告] 该警告将不会出现第二次。", "bold": true, "color": "yellow"}
effect give @s levitation 5 2 true
effect give @s slow_falling 10 1 true
playsound entity.player.hurt_sweet_berry_bush master @s ~ ~ ~ 100