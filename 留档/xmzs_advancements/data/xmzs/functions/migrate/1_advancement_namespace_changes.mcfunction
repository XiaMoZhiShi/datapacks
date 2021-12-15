tellraw @s {"translate": "text.nifeather.log","with": ["2021/07/18: 因数据包结构更改，原夏沫之诗成就将不再可用"]}

#0: 失败， 1: 成功
#感谢Mojang的神奇指令，检测玩家成就之后我还得检测一遍nife_stats到底有没有赋值，而且在下次检测之前我还得重置这个值。
#铁人三项不用迁移，因为这些是函数驱动的。

scoreboard players reset @s nife_stats
execute store success score @s nife_stats run advancement revoke @s only nifeather:1_17_root
execute store success score @s nife_stats run scoreboard players get @s nife_stats
execute if score @s nife_stats matches 1 run advancement grant @s only xmzs:1_17_root

scoreboard players reset @s nife_stats
execute store success score @s nife_stats run advancement revoke @s only nifeather:1_17/light_them_all
execute store success score @s nife_stats run scoreboard players get @s nife_stats
execute if score @s nife_stats matches 1 run advancement grant @s only xmzs:1_17/light_them_all

scoreboard players reset @s nife_stats
execute store success score @s nife_stats run advancement revoke @s only nifeather:1_17/light_it_up
execute store success score @s nife_stats run scoreboard players get @s nife_stats
execute if score @s nife_stats matches 1 run advancement grant @s only xmzs:1_17/light_it_up

scoreboard players reset @s nife_stats
execute store success score @s nife_stats run advancement revoke @s only nifeather:1_17/find_amethyst
execute store success score @s nife_stats run scoreboard players get @s nife_stats
execute if score @s nife_stats matches 1 run advancement grant @s only xmzs:1_17/find_amethyst

scoreboard players reset @s nife_stats
execute store success score @s nife_stats run advancement revoke @s only nifeather:1_17/find_copper
execute store success score @s nife_stats run scoreboard players get @s nife_stats
execute if score @s nife_stats matches 1 run advancement grant @s only xmzs:1_17/find_copper

scoreboard players reset @s nife_stats
execute store success score @s nife_stats run advancement revoke @s only nifeather:1_17/lookat_ali
execute store success score @s nife_stats run scoreboard players get @s nife_stats
execute if score @s nife_stats matches 1 run advancement grant @s only xmzs:1_17/lookat_ali

scoreboard players reset @s nife_stats
execute store success score @s nife_stats run advancement revoke @s only nifeather:1_17/lookat_bundle
execute store success score @s nife_stats run scoreboard players get @s nife_stats
execute if score @s nife_stats matches 1 run advancement grant @s only xmzs:1_17/lookat_bundle

scoreboard players reset @s nife_stats
execute store success score @s nife_stats run advancement revoke @s only nifeather:1_17/lookat_candle
execute store success score @s nife_stats run scoreboard players get @s nife_stats
execute if score @s nife_stats matches 1 run advancement grant @s only xmzs:1_17/lookat_candle

scoreboard players reset @s nife_stats
execute store success score @s nife_stats run advancement revoke @s only nifeather:1_17/light_it_up
execute store success score @s nife_stats run scoreboard players get @s nife_stats
execute if score @s nife_stats matches 1 run advancement grant @s only xmzs:1_17/light_it_up

scoreboard players reset @s nife_stats
execute store success score @s nife_stats run advancement revoke @s only nifeather:1_17/light_a_cake
execute store success score @s nife_stats run scoreboard players get @s nife_stats
execute if score @s nife_stats matches 1 run advancement grant @s only xmzs:1_17/light_a_cake

scoreboard players reset @s nife_stats
execute store success score @s nife_stats run advancement revoke @s only nifeather:1_17/light_them_all
execute store success score @s nife_stats run scoreboard players get @s nife_stats
execute if score @s nife_stats matches 1 run advancement grant @s only xmzs:1_17/light_them_all

scoreboard players reset @s nife_stats
execute store success score @s nife_stats run advancement revoke @s only nifeather:1_17/lookat_charged_creeper
execute store success score @s nife_stats run scoreboard players get @s nife_stats
execute if score @s nife_stats matches 1 run advancement grant @s only xmzs:1_17/lookat_charged_creeper

scoreboard players reset @s nife_stats
execute store success score @s nife_stats run advancement revoke @s only nifeather:1_17/lookat_creeper
execute store success score @s nife_stats run scoreboard players get @s nife_stats
execute if score @s nife_stats matches 1 run advancement grant @s only xmzs:1_17/lookat_creeper

scoreboard players reset @s nife_stats
execute store success score @s nife_stats run advancement revoke @s only nifeather:1_17/lookat_dripstone
execute store success score @s nife_stats run scoreboard players get @s nife_stats
execute if score @s nife_stats matches 1 run advancement grant @s only xmzs:1_17/lookat_dripstone

scoreboard players reset @s nife_stats
execute store success score @s nife_stats run advancement revoke @s only nifeather:1_17/lookat_lin
execute store success score @s nife_stats run scoreboard players get @s nife_stats
execute if score @s nife_stats matches 1 run advancement grant @s only xmzs:1_17/lookat_lin

scoreboard players reset @s nife_stats
execute store success score @s nife_stats run advancement revoke @s only nifeather:1_17/lookat_screaming_goat
execute store success score @s nife_stats run scoreboard players get @s nife_stats
execute if score @s nife_stats matches 1 run advancement grant @s only xmzs:1_17/lookat_screaming_goat

scoreboard players reset @s nife_stats
execute store success score @s nife_stats run advancement revoke @s only nifeather:1_18_root
execute store success score @s nife_stats run scoreboard players get @s nife_stats
execute if score @s nife_stats matches 1 run advancement grant @s only xmzs:1_18_root enter_down

scoreboard players reset @s nife_stats
execute store success score @s nife_stats run advancement revoke @s only nifeather:1_18/go_deeper
execute store success score @s nife_stats run scoreboard players get @s nife_stats
execute if score @s nife_stats matches 1 run advancement grant @s only xmzs:1_18/go_deeper

scoreboard players reset @s nife_stats