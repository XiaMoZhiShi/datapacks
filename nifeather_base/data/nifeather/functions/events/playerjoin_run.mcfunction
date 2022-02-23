tag @s add joinEventProcessing
function #nifeather:events/on_player_join
scoreboard players set @a[scores={nife_quits=1..}] nife_quits 0
tag @s add firstJoinProcessed
tag @s remove joinEventProcessing