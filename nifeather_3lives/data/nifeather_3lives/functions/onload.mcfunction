scoreboard objectives add nife_lives dummy
#scoreboard objectives modify nife_lives rendertype hearts
#scoreboard objectives setdisplay list nife_lives
scoreboard objectives add n3l_random dummy
#declare objective n3l_random 主事件随机数储存

scoreboard objectives add n3l_subrandom dummy
#declare objective n3l_subrandom 子事件随机数储存

scoreboard objectives add n3l_patchlevel dummy
#declare objective n3l_patchlevel 玩家补丁等级

scoreboard objectives add n3l_se_clock dummy
#declare objective n3l_se_clock se时钟

scoreboard objectives add n3l_monsters_nearby dummy
#declare objective n3l_monsters_nearby 周围的怪物数量

#scoreboard objectives add nife_gapple_eat minecraft.used:minecraft.golden_apple

scoreboard players set #4 nife_lives 4
scoreboard players set #2 nife_lives 2
scoreboard players set #0 nife_lives 0
execute unless score #minimumTRespawn nife_lives matches -2147483648..2147483647 run scoreboard players set #minimumTRespawn nife_lives -10
execute unless score #illegalLivesLevel nife_lives matches -2147483648..2147483647 run scoreboard players set #illegalLivesLevel nife_lives 10

#define entity #illegalLivesLevel 非法生命值，越过这个值将会强行重置(nife_lives)
#define entity #minimumTRespawn 最小生命值, 低于此值将无法通过雷电重生

execute as @a[tag=!3livesinit] run function nifeather_3lives:events/playerjoin_run