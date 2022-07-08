scoreboard players add $nrr_spawners nrr_stats 1
execute if score $nrr_showSpawners nrr_options matches 1.. run summon armor_stand ~ ~ ~ {Tags:["nrr_spawner"], Invulnerable: 1b, NoGravity: 1b}
execute unless score $nrr_showSpawners nrr_options matches 1.. run summon marker ~ ~ ~ {Tags:["nrr_spawner"], Invulnerable: 1b, NoGravity: 1b}