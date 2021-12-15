tag @s[tag=indicator] add to_remove
tag @s[tag=!indicator] add indicator

tag @s[tag=to_remove] remove indicator
tag @s[tag=to_remove] remove to_remove

scoreboard players enable @s nife_indiTrigger
scoreboard players set @s nife_indiTrigger 0