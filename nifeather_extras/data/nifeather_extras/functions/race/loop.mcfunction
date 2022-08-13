execute as @a[tag=__ne_racer] at @s run function nifeather_extras:race/racerloop

#队列处理
execute as @a[tag=__ne_racer_queue] at @s if block ~ ~-1.5 ~ blue_ice run function nifeather_extras:race/mark/startboot

#检查是否可以触发
execute as @a[tag=!__ne_canTrigger] at @s if block ~ ~-1.5 ~ packed_ice run tag @s add __ne_canTrigger