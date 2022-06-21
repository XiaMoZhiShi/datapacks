scoreboard objectives add n3l_lives dummy

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

scoreboard objectives add n3l_maxLives dummy
#declare objective n3l_maxLives 某个玩家的最大生命数

scoreboard objectives add n3l_armorLevel dummy
#declare objective n3l_armorLevel 玩家盔甲等级

scoreboard objectives add n3l_lastDeathTime dummy
#declare objective n3l_lastDeathTime 记录玩家死亡时间

#scoreboard objectives add nife_gapple_eat minecraft.used:minecraft.golden_apple

scoreboard players set #4 n3l_lives 4
scoreboard players set #2 n3l_lives 2
scoreboard players set #0 n3l_lives 0
execute unless score #minimumTRespawn n3l_lives matches -2147483648..2147483647 run scoreboard players set #minimumTRespawn n3l_lives -10
execute unless score #weatherChance nife_stats matches -2147483648..2147483647 run scoreboard players set #weatherChance nife_stats 4

#define entity #illegalLivesLevel （已过时，新方法请见functions/events/player/armor/*/boot.mcfunction）非法生命值，越过这个值将会强行重置(n3l_lives)
#define entity #minimumTRespawn 最小生命值, 低于此值将无法通过雷电重生
#define entity #weatherChance 探测到旁观者后改变天气到雷雨的几率

#function nifeather_3lives:misc/weather_modify/detect