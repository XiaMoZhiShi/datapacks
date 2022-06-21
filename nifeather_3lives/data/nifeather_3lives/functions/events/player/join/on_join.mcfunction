execute if score debug nife_stats matches 1 run tellraw @a[tag=admin] [{"text": "[调试] ", "color": "gray"}, "OnPlayerJoin: ", {"selector": "@s"}]

#region 补丁
tag @s add n3l_applyingPatch
#declare tag n3l_applyingPatch 正在应用登录补丁

#1: 副(子)词条随机
execute unless score @s n3l_patchlevel matches 1.. run function nifeather_3lives:events/player/join/patches/1_titles

#2: 盔甲进度
execute unless score @s n3l_patchlevel matches 2.. run function nifeather_3lives:events/player/join/patches/2_advancements

tag @s remove n3l_applyingPatch
#endregion 补丁

#重置生命
execute if entity @s[tag=!3livesinit] run function nifeather_3lives:tools/reset_lives

tellraw @s ["", {"translate": "text.hub.hint", "color": "#dddddd", "with":["\uE33C", {"text": "欢迎回来，您目前剩余", "extra":[{"score":{"objective": "nife_lives", "name": "@s"}},"(最多",{"score":{"objective": "n3l_maxLives", "name": "@s"}}, ")条生命"]}]}]

function nifeather_3lives:events/player/join/hint

tag @s add 3livesinit