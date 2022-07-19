execute if entity @s[tag=all] run tag @s add alll
function nifeather_3lives:tools/reset_n3l_data_silent

execute if entity @s[tag=alll] run tellraw @a {"translate":"text.hub.hint", "with":["N3L", "因为有all标签，将一并重置原版盔甲进度"]}

tellraw @a {"translate":"text.hub.hint", "with":["N3L", {"text":"已重置", "extra":[{"selector":"@s"}, "的N3L数据"]}]}
tag @s remove alll