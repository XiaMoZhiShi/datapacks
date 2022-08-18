execute if score debug nife_stats matches 1 run tellraw @a[tag=admin] [{"text": "[调试] ", "color": "gray"}, "OnPlayerJoin: ", {"selector": "@s"}]

#region 补丁
tag @s add n3l_applyingPatch
#declare tag n3l_applyingPatch 正在应用登录补丁

#改名检测
execute if entity @s[tag=n3l_init_done] unless score @s n3l_lives matches -2147483648..2147483647 run function nifeather_3lives:tools/reset_n3l_data_silent

#workaround: 相关成就
execute if entity @s[advancements={nifeather_3lives:mechanics/armor/spawn=false}] run advancement grant @s only nifeather_3lives:mechanics/armor/spawn

#重置生命
execute if entity @s[tag=!n3l_init_done] run function nifeather_3lives:tools/reset_lives

#1: 副(子)词条随机
execute unless score @s n3l_patchlevel matches 1.. run function nifeather_3lives:events/player/join/patches/1_titles

#2: 盔甲进度
execute unless score @s n3l_patchlevel matches 2.. run function nifeather_3lives:events/player/join/patches/2_advancements

#3: 数值变动
execute unless score @s n3l_patchlevel matches 3.. run function nifeather_3lives:events/player/join/patches/3_lives

#4: 副词条重做
execute unless score @s n3l_patchlevel matches 4.. run function nifeather_3lives:events/player/join/patches/4_subtitle_refactor

tag @s remove n3l_applyingPatch
#endregion 补丁

#向正在治疗的和旁观玩家隐藏实际生命（治疗进度和生命复用一个记分板）
tag @s[tag=!n3l_curing, tag=!n3l_curing_ready, tag=!n3l_specator] add n3l_showActualLives

tellraw @s[tag=n3l_showActualLives] ["", {"translate": "text.hub.hint", "color": "#dddddd", "with":["\uE33C", {"text": "欢迎回来，您目前剩余", "extra":[{"score":{"objective": "n3l_lives", "name": "@s"}},"(最多",{"score":{"objective": "n3l_maxLives", "name": "@s"}}, ")条生命"]}]}]
tellraw @s[tag=!n3l_showActualLives] ["", {"translate": "text.hub.hint", "color": "#dddddd", "with":["\uE33C", {"text": "欢迎回来，您目前的恢复进度为", "extra":[{"score":{"objective": "n3l_lives", "name": "@s"}},"/",{"score":{"objective": "nife_stats", "name": "#n3l_recoverCost"}}]}]}]

execute if entity @s[tag=n3l_showActualLives] run function nifeather_3lives:events/player/join/hint

tag @s remove n3l_showActualLives
tag @s add n3l_init_done
