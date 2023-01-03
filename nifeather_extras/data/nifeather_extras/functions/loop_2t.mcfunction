#Incendium史莱姆workaround
#function nifeather_extras:incendium/slime_workaround_boot

execute in the_nether as @a[distance=0..] at @s if entity @s[predicate=incendium:structure/forbidden_castle] unless entity @e[type=piglin_brute,tag=in.castle,distance=..160] run advancement grant @s only incendium:ash_barrens/conquer_castle