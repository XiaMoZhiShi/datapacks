execute unless block ~ ~ ~ chest if score @s nifeather.limbo.chestFind.retries matches 0..10 positioned ^ ^ ^1 run function nifeather_extras:events/lucky_chest/dimtp/chest_destroy

execute if block ~ ~ ~ chest run function nifeather_extras:events/lucky_chest/dimtp/chest_find_loop
execute if score @s nife_sw_timer matches 11.. run scoreboard players set @s nifeather.limbo.chestFind.retries -1

scoreboard players add @s nifeather.limbo.chestFind.retries 1