execute if score @s xmzs_hub_trigger matches 1 run function hub:tp_to_spawn
execute if score @s xmzs_hub_trigger matches 114514 run function hub:motd/messages/random/boot
execute if score @s xmzs_hub_trigger matches 3 run function hub:motd/messages/contributing

scoreboard players set @s xmzs_hub_trigger 0