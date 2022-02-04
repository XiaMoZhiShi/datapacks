scoreboard players add @s nifeather.limbo.chestFind.retries 1

execute unless block ~ ~ ~ chest if score @s nifeather.limbo.chestFind.retries matches 0..20 positioned ^ ^ ^0.5 run function nifeather_extras:mechanics/lucky_chest/dimtp/chest_find_loop
execute if block ~ ~ ~ chest run function nifeather_extras:mechanics/lucky_chest/dimtp/chest_destroy