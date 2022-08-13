execute as @a[tag=__ne_racer] at @s run function nifeather_extras:race/racerloop
execute as @a[tag=!__ne_canTrigger] at @s if block ~ ~-1.5 ~ packed_ice run tag @s add __ne_canTrigger