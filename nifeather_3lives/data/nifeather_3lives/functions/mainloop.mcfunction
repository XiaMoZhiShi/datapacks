execute as @e[type=lightning_bolt, tag=!processed] at @s if predicate nifeather_3lives:is_thundering if predicate nifeather:is_night run function nifeather_3lives:respawn/thunder_respawn_preprocess

execute as @a[tag=blind] at @s run function nifeather_3lives:blind/run