# from: entity/mobs/main
# @s: toxic slime

execute if entity @a[distance=..1.5,predicate=incendium:biome/toxic_heap,predicate=!incendium:wearing/hazmat] run effect give @a[distance=..1.5] minecraft:poison 5 3
particle minecraft:falling_dust slime_block ~ ~0.45 ~ 0.1 0.2 0.1 0 0 force