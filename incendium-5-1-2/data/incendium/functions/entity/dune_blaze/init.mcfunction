# from: entity/mobs/init
# @s: dune blaze

tag @s add in.ticking_entity
tag @s add in.dune_blaze
tag @s remove in.fortress

# team join in.dune_blaze @s

attribute @s minecraft:generic.follow_range base set 16
attribute @s minecraft:generic.movement_speed base set 0.5

execute if predicate incendium:other/in_portal run tp @s ~ -1000 ~

execute if predicate incendium:structure/fortress run tag @s add in.fortress
data merge entity @s[tag=!in.fortress] {CustomName:'"Desert Blaze"', CustomNameVisible: false, DeathLootTable:"incendium:entity/dune_blaze"}
execute if entity @s[tag=!in.fortress] run team join in.noname @s
execute if entity @s[tag=in.fortress] run tag @s remove in.fortress