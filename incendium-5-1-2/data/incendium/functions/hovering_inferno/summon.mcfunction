# from: entity/other/init
# @s: item

execute if score $infernoRunning nife_stats matches 1 run function incendium:hovering_inferno/summon_fail
execute unless score $infernoRunning nife_stats matches 1 run function incendium:hovering_inferno/summon_real