execute as @e[type=lightning_bolt, tag=!processed] at @s if predicate nifeather_3lives:is_thundering if predicate nifeather:is_night run function nifeather_3lives:events/thunder/activatecheck

execute as @a at @s run function nifeather_3lives:titles/loop_titles
execute as @a at @s run function nifeather_3lives:titles/loop_subtitles