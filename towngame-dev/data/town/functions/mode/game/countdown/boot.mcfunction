#初始化倒计时
#declare entity gameCountdownFrom 游戏倒计时起始时间（刻）
scoreboard players operation gameCountdownFrom town.clock = gameCountdownSecond town.defines
scoreboard players operation gameCountdownFrom town.clock *= 1s town.defines

#declare entity gameCountdownMaxSecondDisplay 当前游戏最大倒计时时间（秒）
#declare entity gameCountdownMaxMinuteDisplay 当前游戏最大倒计时时间（分钟）

scoreboard players operation gameCountdownMaxSecondDisplay town.clock = gameCountdownSecond town.defines
scoreboard players operation gameCountdownMaxSecondDisplay town.clock %= 60sDemical town.defines

scoreboard players operation gameCountdownMaxMinuteDisplay town.clock = gameCountdownSecond town.defines
scoreboard players operation gameCountdownMaxMinuteDisplay town.clock /= 60sDemical town.defines

function town:mode/game/countdown/restart_countdown