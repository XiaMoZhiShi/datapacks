execute if score @s n3l_settings_trigger matches 1 run function nifeather_3lives:settings/trigger/toggle_spectatorparticle

scoreboard players set @s n3l_settings_trigger 0
scoreboard players enable @s n3l_settings_trigger

function nifeather:settings/pushmenu