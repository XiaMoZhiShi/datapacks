particle minecraft:ash ~ ~1.3 ~ 1 1 1 0 500

#传送并播放音效
execute in nifeather_extras:limbo run tp @s 0 255 0
spreadplayers 0 0 50 500 under 5 false @s
execute at @s run setblock ~ ~ ~ torch
execute in nifeather_extras:limbo run playsound minecraft:block.bell.resonate master @a[distance=0..] 0 0 0 3000
execute in nifeather_extras:limbo run playsound minecraft:block.bell.use master @a[distance=0..] 0 0 0 3000