#服务器菜单
execute if entity @s[tag=!joined] run function xmzs:events/onplayerjoin/joinitem

#成就tag
execute if entity @s[name="__Lin__"] run tag @s add lin
execute if entity @s[name="Lin7824"] run tag @s add lin
execute if entity @s[name="laozhengali"] run tag @s add ali

scoreboard players set @s nife_quits 0
scoreboard players enable @s nife_indiTrigger

#无攻击冷却
execute if score #noCoolDown nife_stats matches 0 run attribute @s generic.attack_speed modifier remove 4000000-0000-0000-0000-1
execute if score #noCoolDown nife_stats matches 1 run attribute @s generic.attack_speed modifier add 4000000-0000-0000-0000-1 "NiFeather" 300 add

#数据调整

function xmzs:migrate/do_migrate

#加tag
execute if entity @s[tag=!firstJoinProcessed] run tag @s add firstJoinProcessed
