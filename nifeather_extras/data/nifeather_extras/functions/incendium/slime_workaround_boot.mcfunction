execute store result score slimes nife_stats run execute if entity @e[type=minecraft:slime, tag=in.toxic_slime]
execute store result score players nife_stats run execute in the_nether if entity @a[distance=0..]

scoreboard players operation slimecaps nife_stats = players nife_stats
scoreboard players operation slimecaps nife_stats *= #slimecap nife_stats

execute if score slimes nife_stats >= slimecaps nife_stats in the_nether at @a[distance=0..] run tp @e[type=slime, distance=16..128, limit=10, sort=furthest] ~ -100 ~