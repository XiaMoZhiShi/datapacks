execute as @a[tag=!BEWarned] at @s if predicate xmzs:is_under_zero run function xmzs:bewarn
execute as @a[tag=!BEWarned] at @s if predicate xmzs:is_above_old_top run function xmzs:bewarn

execute as @a[tag=indicator] at @s run function xmzs:indicator/main
execute as @a[scores={nife_indiTrigger=1}] run function xmzs:indicator/toggle