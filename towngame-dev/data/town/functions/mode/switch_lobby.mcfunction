scoreboard players set value town.gameStatus 0

execute at @e[tag=town.QueueEnterance, limit=1] run tp @a[tag=town.inGame] ^ ^ ^5
tag @a[tag=town.inGame] remove town.inGame