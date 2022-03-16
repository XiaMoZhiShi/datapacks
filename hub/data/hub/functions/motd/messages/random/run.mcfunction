tellraw @s "\n "

execute if score @s xmzs_hub_motd matches 1 run function hub:motd/messages/random/liuyunjiefeng
execute if score @s xmzs_hub_motd matches 2 run function hub:motd/messages/random/paimon
execute if score @s xmzs_hub_motd matches 3 run function hub:motd/messages/random/yaesakura
execute if score @s xmzs_hub_motd matches 4 run function hub:motd/messages/random/rozaliya
execute if score @s xmzs_hub_motd matches 5 run function hub:motd/messages/random/abab
execute if score @s xmzs_hub_motd matches 6 run function hub:motd/messages/random/baba

tellraw @s "\n "