execute at @e[type=arrow, tag=isCrit] run particle minecraft:white_ash ~ ~ ~ 0 0 0 0 10
tag @e[type=arrow, nbt={crit: 1b}, tag=!isCrit] add isCrit

execute as @e[type=minecraft:arrow, nbt={inGround: 1b}, tag=from_finalize] at @s run function hub:arrow_finalize/from_finalize/run
execute as @e[type=minecraft:arrow, nbt={inGround: 1b}] at @s run function hub:arrow_finalize/arrow_finalize

execute as @e[tag=xmzs_arrow_finalize_anim] at @s run function hub:arrow_finalize/arrow_finalize_anim_loop

scoreboard players add @e[tag=from_finalize] xmzs_arrow_finalize_timer 1
kill @e[tag=from_finalize, scores={xmzs_arrow_finalize_timer=5..}]
