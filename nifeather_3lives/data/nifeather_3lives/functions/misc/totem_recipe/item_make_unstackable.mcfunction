scoreboard players add $n3l_gapplesCrafted n3l_random 1
execute store result entity @s Item.tag.RNG int 1 run scoreboard players get $n3l_gapplesCrafted n3l_random

summon marker ~ ~ ~ {Tags:["n3lRNG"]}
data modify entity @s Item.tag.RNG1 set from entity @e[limit=1, sort=nearest, tag=n3lRNG] UUID
kill @e[tag=n3lRNG, limit=1, sort=nearest]