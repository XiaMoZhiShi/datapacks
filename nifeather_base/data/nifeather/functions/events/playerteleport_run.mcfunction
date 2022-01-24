#获取当前坐标

#X
execute as @a store result score @s nife_new_x run data get entity @s Pos[0]
#Z
execute as @a store result score @s nife_new_z run data get entity @s Pos[2]

#计算
scoreboard players operation @s nife_position_delta = @s nife_new_x
scoreboard players operation @s nife_position_delta -= @s nife_last_x

execute if score @s nife_position_delta matches ..-1 run function nifeather:events/playerteleport_abs_x
execute if score @s nife_position_delta >= trigger nife_position_delta run tag @s add shouldTriggerTP

#计算
scoreboard players operation @s nife_position_delta = @s nife_new_z
scoreboard players operation @s nife_position_delta -= @s nife_last_z

execute if score @s nife_position_delta matches ..-1 run function nifeather:events/playerteleport_abs_z
execute if score @s nife_position_delta >= trigger nife_position_delta run tag @s add shouldTriggerTP

scoreboard players operation @s nife_last_x = @s nife_new_x
scoreboard players operation @s nife_last_z = @s nife_new_z

execute if entity @s[tag=shouldTriggerTP] run function #nifeather:events/on_player_teleport
tag @s remove shouldTriggerTP