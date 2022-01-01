particle minecraft:ash ~ ~1.3 ~ 1 1 1 0 500

#传送并播放音效
execute in nifeather_extras:limbo run tp @s 0 -1 0
title @s times 0 65565 0
spreadplayers 0 0 50 500 under 3 false @s

#paper
execute at @s if block ~ ~ ~ water run tag @s add limbo_process
execute at @s unless block ~ ~ ~ water run function nifeather_extras:limbo/paper_workaround/get_surface_run

scoreboard players set @s nifeather.limbo.spreadSurfaceFind.retries 0

#播放音效
execute in nifeather_extras:limbo run playsound minecraft:block.bell.resonate master @a[distance=0..] 0 0 0 3000
execute in nifeather_extras:limbo run playsound minecraft:block.bell.use master @a[distance=0..] 0 0 0 3000
title @s times 0 5 5