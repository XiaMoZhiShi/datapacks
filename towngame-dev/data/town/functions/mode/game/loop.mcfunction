execute unless score state town.gameStatus matches 1..1 run function town:mode/game/boot

#declare entity borderWidth 边界实际宽度
execute store result score borderWidth town.mode.game.stage run worldborder get

#倒计时更新
function town:mode/game/countdown/loop

#region Bossbar更新

bossbar set town:game name [{ "text": "", "bold": true, "color": "#617f3c" }, {"score":{"objective": "town.clock", "name": "gameCountdownMinuteDisplay"}}, "分", {"score":{"objective": "town.clock", "name": "gameCountdownSecondDisplay"}}, "秒剩余"]

#endregion Bossbar更新