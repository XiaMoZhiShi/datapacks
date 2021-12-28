#declare entity gameCountdownCurrent 当前游戏倒计时时间（刻）
scoreboard players remove gameCountdownCurrent town.clock 1

#更新时间显示
#declare entity gameCountdownSecondDisplay 当前游戏倒计时时间（秒）
#declare entity gameCountdownMinuteDisplay 当前游戏倒计时时间（分钟）

scoreboard players operation gameCountdownSecondDisplay town.clock = gameCountdownCurrent town.clock
scoreboard players operation gameCountdownSecondDisplay town.clock /= 1s town.defines
scoreboard players operation gameCountdownSecondDisplay town.clock %= 60sDemical town.defines

scoreboard players operation gameCountdownMinuteDisplay town.clock = gameCountdownCurrent town.clock
scoreboard players operation gameCountdownMinuteDisplay town.clock /= 1min town.defines

execute if score gameCountdownCurrent town.clock matches ..0 run function town:mode/game/countdown/done