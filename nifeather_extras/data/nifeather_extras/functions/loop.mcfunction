#Paper Workaround
execute as @a[tag=limbo_process] at @s run function nifeather_extras:limbo/paper_workaround/get_surface_loop

#Lmb退出事件
execute in nifeather_extras:limbo as @a[distance=0..] at @s if block ~ ~ ~ end_gateway run function nifeather_extras:limbo/portal_exit

#挖掘催发体时额外生成15点经验，与1.19保持一致
execute as @a[scores={nife_catalystCounter=1..}] at @s run function nifeather_extras:mechanics/catalyst_exp_revert

#Incendium史莱姆workaround
function nifeather_extras:incendium/slime_workaround_boot