advancement revoke @s only nifeather_3lives:mechanics/totem_recipe
recipe take @s nifeather_3lives:smith_totem

#首先检查玩家背包
#1: true; 0: false
execute store success score @s n3l_recipeCheckTemp run clear @s knowledge_book 1

#如果在背包里完成
execute if score @s n3l_recipeCheckTemp matches 1 run function nifeather_3lives:misc/totem_recipe/in_inventory
#如果被丢出去
execute if score @s n3l_recipeCheckTemp matches 0 run tag @s add n3l_itemThrownAway
#declare tag n3l_itemThrownAway 物品是否被扔出去

scoreboard players reset @s n3l_recipeCheckTemp