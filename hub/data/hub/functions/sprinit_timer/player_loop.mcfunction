effect clear @s speed

execute if score @s xmzs_sprinit_timer matches 20..40 run effect give @s speed 10 0

execute if score @s xmzs_sprinit_timer matches 40..60 run effect give @s speed 10 1

execute if score @s xmzs_sprinit_timer matches 60..120 run effect give @s speed 10 2

execute if score @s xmzs_sprinit_timer matches 120.. run effect give @s speed 10 4