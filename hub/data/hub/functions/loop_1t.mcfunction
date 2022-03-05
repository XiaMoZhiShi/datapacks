execute at @e[type=arrow, tag=isCrit] run particle minecraft:white_ash ~ ~ ~ 0 0 0 0 10
tag @e[type=arrow, nbt={crit: 1b}, tag=!isCrit] add isCrit

#tick蓄力箭矢
execute as @e[type=minecraft:arrow, tag=isCrit, tag=!xmzs_arrow_finalize_anim] at @s run function hub:crit_tick

#tick霜华矢
execute as @e[type=minecraft:arrow, nbt={inGround: 1b}, tag=from_finalize] at @s run function hub:arrow_finalize/from_finalize/run
execute as @e[type=minecraft:arrow, tag=from_finalize, tag=!no_forst] at @s if block ~ ~ ~ water[level=0] run function hub:arrow_finalize/from_finalize/make_ice

execute as @e[tag=xmzs_arrow_finalize_anim] at @s run function hub:arrow_finalize/arrow_finalize_loop

scoreboard players add @e[tag=from_finalize] xmzs_arrow_finalize_timer 1
kill @e[tag=from_finalize, scores={xmzs_arrow_finalize_timer=5..}]

execute as @e[type=tnt] at @s run function hub:block_tnt

execute as @a[scores={xmzs_hub_trigger=1..}] run function hub:tp_to_spawn

execute as @a at @s run function hub:sprinit_timer/playerloop_boot