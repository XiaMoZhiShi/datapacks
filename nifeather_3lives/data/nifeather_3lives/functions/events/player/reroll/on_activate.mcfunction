advancement revoke @s only nifeather_3lives:mechanics/reroll_title

execute if entity @s[tag=n3l_curing] run function nifeather_3lives:events/player/reroll/state/fail
execute if score @s n3l_lives matches ..0 run function nifeather_3lives:events/player/reroll/state/fail
execute if score @s[tag=!n3l_curing] n3l_lives matches 1.. run function nifeather_3lives:events/player/reroll/state/pass