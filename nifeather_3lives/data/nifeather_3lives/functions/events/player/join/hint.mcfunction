
execute if score @s n3l_random matches 1 run tellraw @s  ["", {"translate": "text.hub.hint", "color": "#dddddd", "with":["\uE33C", "当前主词条：无"]}]
execute if score @s n3l_random matches 2 run tellraw @s  ["", {"translate": "text.hub.hint", "color": "#dddddd", "with":["\uE33C", "当前主词条：死亡后引发爆炸"]}]
execute if score @s n3l_random matches 3 run tellraw @s  ["", {"translate": "text.hub.hint", "color": "#dddddd", "with":["\uE33C", "当前主词条：削弱最大生命值"]}]
execute if score @s n3l_random matches 4 run tellraw @s  ["", {"translate": "text.hub.hint", "color": "#dddddd", "with":["\uE33C", "当前主词条：降低移动速度"]}]
execute if score @s n3l_random matches 5 run tellraw @s  ["", {"translate": "text.hub.hint", "color": "#dddddd", "with":["\uE33C", "当前主词条：降低攻击速度"]}]
execute if score @s n3l_random matches 6 run tellraw @s  ["", {"translate": "text.hub.hint", "color": "#dddddd", "with":["\uE33C", "当前主词条：降低攻击伤害"]}]
execute if score @s n3l_random matches 7 run tellraw @s  ["", {"translate": "text.hub.hint", "color": "#dddddd", "with":["\uE33C", "当前主词条：降低盔甲值"]}]
execute if score @s n3l_random matches 8 run tellraw @s  ["", {"translate": "text.hub.hint", "color": "#dddddd", "with":["\uE33C", "当前主词条：提升攻击速度"]}]
execute if score @s n3l_random matches 9 run tellraw @s  ["", {"translate": "text.hub.hint", "color": "#dddddd", "with":["\uE33C", "当前主词条：提升盔甲值"]}]
execute if score @s n3l_random matches 10 run tellraw @s  ["", {"translate": "text.hub.hint", "color": "#dddddd", "with":["\uE33C", "当前主词条：提升最大生命值"]}]
execute if score @s n3l_random matches 11 run tellraw @s ["", {"translate": "text.hub.hint", "color": "#dddddd", "with":["\uE33C", "当前主词条：无"]}]
execute if score @s n3l_random matches 12 run tellraw @s ["", {"translate": "text.hub.hint", "color": "#dddddd", "with":["\uE33C", "当前主词条：提升运气"]}]
execute if score @s n3l_random matches 13 run tellraw @s ["", {"translate": "text.hub.hint", "color": "#dddddd", "with":["\uE33C", "当前主词条：降低运气"]}]
execute if score @s n3l_random matches 14 run tellraw @s ["", {"translate": "text.hub.hint", "color": "#dddddd", "with":["\uE33C", "当前主词条：夜晚周围亮度小于4时将致盲"]}]

function nifeather_3lives:titles/subtitles/display/buildbuffer
tellraw @s ["", {"translate": "text.hub.hint", "color": "#dddddd", "with":["\uE33C", ["当前副词条：", {"nbt":"Output", "storage": "nifeather:n3l", "interpret": true}]]}]
