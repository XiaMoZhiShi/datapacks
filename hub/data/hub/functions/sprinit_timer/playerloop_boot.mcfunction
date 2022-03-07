execute if entity @s[nbt={OnGround: 1b}] run function hub:sprinit_timer/onground_loop

function hub:sprinit_timer/always_loop

execute if entity @s[tag=enabledSubtitle] run function hub:sprinit_timer/subtitle_loop