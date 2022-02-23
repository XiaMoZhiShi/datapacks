execute if entity @s[tag=!find] run fill ~1 ~ ~1 ~-1 ~-1 ~-1 frosted_ice[age=2] replace frosted_ice[age=3]
execute if entity @s[tag=!find] run fill ~1 ~ ~1 ~-1 ~-1 ~-1 frosted_ice[age=2] replace water[level=0]
tag @s add find
kill @s