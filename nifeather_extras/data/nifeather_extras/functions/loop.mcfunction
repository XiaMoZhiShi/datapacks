execute as @a[tag=limbo_process] at @s run function nifeather_extras:limbo/paper_workaround/get_surface_loop

execute in nifeather_extras:limbo as @a[distance=0..] at @s if block ~ ~ ~ end_gateway run function nifeather_extras:limbo/portal_exit

execute as @e[type=armor_stand, tag=!nifeEx_processed] run function nifeather_extras:misc/armor_stand/run
#function nifeather_extras:incendium/slime_workaround_boot