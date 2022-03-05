effect clear @s speed

execute if score @s xmzs_sprinit_timer matches 20..40 run effect give @s speed 60 0 true

execute if score @s xmzs_sprinit_timer matches 40..60 run effect give @s speed 60 1 true

execute if score @s xmzs_sprinit_timer matches 60..120 run effect give @s speed 60 2 true

execute if score @s xmzs_sprinit_timer matches 120.. run effect give @s speed 60 4 false