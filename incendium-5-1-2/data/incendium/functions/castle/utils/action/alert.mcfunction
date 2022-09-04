playsound minecraft:ambient.cave player @a[distance=..160] ~ ~ ~ 2 0.9 0.2
playsound minecraft:ambient.cave player @a[distance=..160] ~ ~ ~ 2 0.9 0.2
playsound minecraft:ambient.cave player @a[distance=..160] ~ ~ ~ 2 0.9 0.2
playsound minecraft:ambient.cave player @a[distance=..160] ~ ~ ~ 2 0.75 0.2
playsound minecraft:ambient.cave player @a[distance=..160] ~ ~ ~ 2 0.75 0.2
playsound minecraft:ambient.cave player @a[distance=..160] ~ ~ ~ 2 0.75 0.2
playsound minecraft:ambient.cave player @a[distance=..160] ~ ~ ~ 2 0.75 0.2
playsound minecraft:ambient.cave player @a[distance=..160] ~ ~ ~ 2 0.5 0.2
playsound minecraft:ambient.cave player @a[distance=..160] ~ ~ ~ 2 0.5 0.2
playsound minecraft:ambient.cave player @a[distance=..160] ~ ~ ~ 2 0.5 0.2
playsound minecraft:ambient.cave player @a[distance=..160] ~ ~ ~ 2 0.5 0.2
effect give @a[distance=..16] blindness 3 0 true
execute as @e[type=piglin_brute,tag=shock_troop,distance=..110] at @s if predicate incendium:random/80 run function incendium:castle/paratrooper/action/leap_silent
summon piglin_brute ~-50 ~-6 ~ {FallFlying:1b,Tags:["reinforcement","castle","shock_troop","flying","jumped"],ArmorItems:[{id:"minecraft:golden_boots",Count:1b},{id:"minecraft:golden_leggings",Count:1b},{id:"minecraft:elytra",Count:1b},{id:"minecraft:golden_helmet",Count:1b}]}
summon piglin_brute ~50 ~-6 ~ {FallFlying:1b,Tags:["reinforcement","castle","shock_troop","flying","jumped"],ArmorItems:[{id:"minecraft:golden_boots",Count:1b},{id:"minecraft:golden_leggings",Count:1b},{id:"minecraft:elytra",Count:1b},{id:"minecraft:golden_helmet",Count:1b}]}
summon piglin_brute ~ ~-6 ~50 {FallFlying:1b,Tags:["reinforcement","castle","shock_troop","flying","jumped"],ArmorItems:[{id:"minecraft:golden_boots",Count:1b},{id:"minecraft:golden_leggings",Count:1b},{id:"minecraft:elytra",Count:1b},{id:"minecraft:golden_helmet",Count:1b}]}
summon piglin_brute ~ ~-6 ~-50 {FallFlying:1b,Tags:["reinforcement","castle","shock_troop","flying","jumped"],ArmorItems:[{id:"minecraft:golden_boots",Count:1b},{id:"minecraft:golden_leggings",Count:1b},{id:"minecraft:elytra",Count:1b},{id:"minecraft:golden_helmet",Count:1b}]}
execute as @e[type=piglin_brute,tag=reinforcement,distance=..110] at @s facing entity @p eyes run function incendium:castle/paratrooper/action/shoot/rocket
kill @s