tellraw @a {"text": "TOWN INIT"}

execute unless score value town.gameStatus matches 0.. run function town:tools/reset_settings

#region 创建并初始化记分板对象

#declare objective town.gameStatus 游戏状态（0: 大厅 | 1: 游戏中）
scoreboard objectives add town.gameStatus dummy

#declare objective town.mode.lobby.queue 大厅队列
scoreboard objectives add town.mode.lobby.queue dummy

#declare objective town.mode.game.stage 游戏阶段数据
scoreboard objectives add town.mode.game.stage dummy

#declare objective town.clock 游戏主时钟
scoreboard objectives add town.clock dummy

#declare objective town.defines 一些定义/设置
scoreboard objectives add town.defines dummy

#declare entity 1s 1s
scoreboard players set 1s town.defines 20

#declare entity 0.1s 0.1s
scoreboard players set 0.1s town.defines 2

#declare entity 1min 1min
scoreboard players set 1min town.defines 1200

#declare entity 60sDemical 十进制的60秒(非1200刻)
scoreboard players set 60sDemical town.defines 60

#endregion 创建并初始化记分板对象

#region 创建并初始化Bossbar对象

#declare bossbar town:lobby 大厅bossbar
bossbar add town:lobby {"text": "LOBBY BOSSBAR"}

#declare bossbar town:game 游戏bossbar
bossbar add town:game {"text": "GAME BOSSBAR"}

#endregion 创建并初始化Bossbar对象