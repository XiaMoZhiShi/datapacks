kill @s

execute store result score @s nife_health run data get entity @s Health

#如果kill被某种插件拦截，确保能触发死亡事件
execute if score @s nife_health matches 1.. at @s run function nifeather:events/player/death/run