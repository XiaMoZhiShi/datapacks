# from: ./feed
# @s: baby ghast

tag @s add in.following

# audiovisuals
playsound minecraft:entity.ghast.scream player @a[distance=..8] ~ ~ ~ 2 1 0
playsound minecraft:item.honey_bottle.drink player @a[distance=..8] ~ ~ ~ 2 0.7
playsound minecraft:item.honey_bottle.drink player @a[distance=..8] ~ ~ ~ 2 1
playsound minecraft:item.honey_bottle.drink player @a[distance=..8] ~ ~ ~ 2 1.3
particle minecraft:heart ~ ~0.6 ~ 0.3 0.3 0.3 0.04 10 force

advancement grant @a[distance=..8] only incendium:quartz_flats/feed_ghastling
