#nrr_temp_rabbit_health -> nrr_trh
execute store result score $nrr_trh nrr_bossbarTimeTracker run data get entity @s Health
execute if score $nrr_trh nrr_bossbarTimeTracker matches ..0 run scoreboard players set $nrr_trh nrr_bossbarTimeTracker 1
scoreboard players operation $nrr_rabbitTotalHealth nrr_bossbarTimeTracker += $nrr_trh nrr_bossbarTimeTracker
#declare entity $nrr_tabbitTotalHealth 兔子的总血量