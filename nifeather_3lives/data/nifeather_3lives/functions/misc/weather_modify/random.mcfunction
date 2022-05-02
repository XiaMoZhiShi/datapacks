execute store result score WEATHER n3l_random run loot spawn ~ ~ ~ loot nifeather:rng/1-10

execute if score WEATHER n3l_random <= #weatherChance nife_stats run weather thunder
