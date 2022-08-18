#清理旧的副词条效果
tag @s remove n3l_se0
tag @s remove n3l_tick_se0

tag @s remove n3l_se1
tag @s remove n3l_tick_se1

tag @s remove n3l_se2

attribute @s generic.attack_damage modifier remove 1-0-0-0-0
attribute @s generic.attack_speed modifier remove 1-0-0-0-0

tag @s remove n3l_tick_se0

attribute @s generic.attack_damage modifier remove 1-0-0-1-0
attribute @s generic.movement_speed modifier remove 1-0-0-1-0

attribute @s generic.attack_damage modifier remove 1-0-0-2-0
attribute @s generic.attack_speed modifier remove 1-0-0-2-0

#随机新的副词条
tellraw @s ["", {"translate": "text.hub.hint", "color": "#dddddd", "with":["\uE33C", "正在获取新的副词条..."]}]
function nifeather_3lives:titles/set_subtitle

scoreboard players set @s n3l_patchlevel 4