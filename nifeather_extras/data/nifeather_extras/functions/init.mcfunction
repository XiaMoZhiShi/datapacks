scoreboard objectives add nife_ods_timer dummy
scoreboard objectives add nife_ods_rng dummy

#declare objective nifeather.limbo.chestFind.retries 寻箱计数器
scoreboard objectives add nifeather.limbo.chestFind.retries dummy

#declare objective nifeather.limbo.spreadSurfaceFind.retries 地表寻找计数器
scoreboard objectives add nifeather.limbo.spreadSurfaceFind.retries dummy

execute unless score #slimecap nife_stats matches 0..2147483647 run scoreboard players set #slimecap nife_stats 20
#declare entity #slimecap 史莱姆上限，实际数值是"下界玩家数 * #slimecap"

#declare objective nifeather.limbo.darknessLevel 黑暗等级，大于5（即失去光源10秒）后给予凋零
scoreboard objectives add nifeather.limbo.darknessLevel dummy