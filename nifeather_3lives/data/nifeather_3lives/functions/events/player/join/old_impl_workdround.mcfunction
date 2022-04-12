#属性修复
attribute @s minecraft:generic.max_health base set 20

#旁观修复
tellraw @s ["", {"translate": "text.hub.hint", "color": "#dddddd", "with":["\uE33C", "正在随机新的主副词条..."]}]
execute if entity @s[gamemode=spectator] unless predicate nifeather_3lives:in_nether run spreadplayers ~ ~ 0 1 false @s
execute if entity @s[gamemode=spectator] if predicate nifeather_3lives:in_nether run spreadplayers ~ ~ 0 1 under 128 false @s
gamemode survival @s

function nifeather_3lives:titles/set_titles
scoreboard players set @s n3l_patchlevel 1