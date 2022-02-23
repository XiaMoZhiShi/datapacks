scoreboard players add @s xmzs_arrow_finalize_timer 1
#tp @s ~ ~1 ~

execute if entity @s[nbt={inGround: 1b}] run scoreboard players set @s xmzs_arrow_finalize_timer 5

execute if score @s xmzs_arrow_finalize_timer matches 5.. run function hub:arrow_finalize/arrow_finalize_run