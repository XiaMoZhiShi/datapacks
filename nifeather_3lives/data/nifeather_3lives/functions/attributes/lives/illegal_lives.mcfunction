tellraw @a [{"text":"[E] ", "color": "red"}, {"selector": "@s", "color": "red"}, {"text":"不能拥有"}, {"score":{"objective": "nife_lives", "name": "@s"}}, {"text":"点nife_lives。"}]

scoreboard players set @s nife_lives 0

function #nifeather:events/on_player_death