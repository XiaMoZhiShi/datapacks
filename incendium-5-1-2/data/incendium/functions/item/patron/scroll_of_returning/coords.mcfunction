# from: ./activate
# @s: helper marker entity thing

data modify entity @s Pos set from storage incendium:temp player.Pos

execute at @s run tp @a[tag=in.self,limit=1] ~ ~ ~

execute in minecraft:overworld run tp @s 0.0 0.0 0.0
