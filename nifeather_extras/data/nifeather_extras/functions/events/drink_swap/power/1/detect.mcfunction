#base
tag @s add ods
execute if score #LoadedImpersonate nife_stats <= #-1 nife_stats run function nifeather_extras:events/drink_swap/generic/fail_impersonate_not_installed
advancement revoke @s only nifeather_extras:disguise/power_1

#add custom below

#0: ok, 1: err!
execute store success score @s nife_ods_timer run execute if entity @p[tag=!ods, distance=..20]
execute if score #LoadedImpersonate nife_stats matches 1 run function nifeather_extras:events/drink_swap/power/1/run
#execute if score @s nife_ods_timer matches 0 run function nifeather_extras:events/drink_swap/generic/fail_no_person_found

#add custom above
tag @s remove ods