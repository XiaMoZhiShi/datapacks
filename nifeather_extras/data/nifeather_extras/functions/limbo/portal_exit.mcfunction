execute if block ~ ~-1 ~ grass_block run function nifeather_extras:mechanics/lucky_chest/dimtp/run_limbo

execute if block ~ ~-1 ~ dirt_path in overworld run function nifeather_extras:limbo/portal_exit_to_overworld
execute if block ~ ~ ~ dirt_path if block ~ ~0.2 ~ end_gateway in overworld run function nifeather_extras:limbo/portal_exit_to_overworld

advancement grant @s only nifeather_extras:display/limbo/escape_limbo