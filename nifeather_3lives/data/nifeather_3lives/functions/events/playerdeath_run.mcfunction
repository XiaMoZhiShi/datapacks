execute if score debug nife_stats matches 1 run tellraw @a[tag=admin] [{"text": "[DEBUG] ", "color": "gray"}, "OnPlayerDeath: ", {"selector": "@s"}]

scoreboard players remove @s nife_lives 1
execute if entity @s[tag=nife_curing, scores={nife_lives=0..}] run scoreboard players set @s nife_lives 0

execute if score @s nife_lives matches ..0 run function nifeather_3lives:events/on_specator_death
execute if score @s nife_lives > #illegalLivesLevel nife_lives run function nifeather_3lives:attributes/lives/illegal_lives

#公告
execute if score @s nife_lives matches 1.. run tellraw @s ["", {"text":"你还剩下"}, {"score": {"name": "@s", "objective": "nife_lives"}}, {"text":"次机会。"}]
execute if score @s nife_lives matches ..0 run tellraw @a ["", {"selector": "@s"}, {"text":"消散了。"}]

#标签事件
execute store result score is_immediate_respawn nife_stats run gamerule doImmediateRespawn
execute if score is_immediate_respawn nife_stats matches 0 run execute if entity @s[tag=death_explode] run summon tnt ~ ~ ~

#标签
tag @s remove death_explode