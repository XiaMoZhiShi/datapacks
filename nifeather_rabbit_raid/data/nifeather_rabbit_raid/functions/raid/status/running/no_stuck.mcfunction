#data merge entity @s {Motion:[0d, 0.5d, 0d]}
#tp @s @e[tag=nrr_rabbit, sort=random, distance=1.., limit=1]

setblock ~ ~ ~ air destroy
playsound minecraft:entity.rabbit.attack hostile @a ~ ~ ~
effect give @s strength 15

#effect give @s glowing