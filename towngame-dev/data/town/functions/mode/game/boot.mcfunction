tellraw @a {"text": "GAME BOOT"}

scoreboard players set state town.gameStatus 1

#初始化bossbar
bossbar set town:game max 7
bossbar set town:game value 0
bossbar set town:game players @a[tag=town.inGame]

#初始化边界
#declare tag town.gameCenter 游戏边界中心
execute as @e[tag=town.gameCenter] at @s run function town:mode/game/border/init_border

function town:mode/game/countdown/boot