scoreboard objectives add nife_lives dummy
scoreboard objectives modify nife_lives rendertype hearts
scoreboard objectives setdisplay list nife_lives

scoreboard objectives add nife_gapple_eat minecraft.used:minecraft.golden_apple

scoreboard players set #4 nife_lives 4
scoreboard players set #2 nife_lives 2
scoreboard players set #0 nife_lives 0
scoreboard players set #minimumTRespawn nife_lives -10
scoreboard players set #illegalLivesLevel nife_lives 10

#define entity #illegalLivesLevel 非法生命值，越过这个值将会强行重置  10|nife_lives

execute as @a[tag=!3livesinit] run function nifeather_3lives:events/playerjoin_run