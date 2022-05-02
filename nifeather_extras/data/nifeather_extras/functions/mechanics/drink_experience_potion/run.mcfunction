summon experience_orb ~ ~ ~ {Value: 100, Count: 1, Motion: [0.1, 0.5, 0.1]}
advancement revoke @s only nifeather_extras:mechanics/drink_experience_potion

#Value
execute store result entity @e[distance=..1, sort=nearest, type=experience_orb, limit=1] Value int 1 run loot spawn ~ ~ ~ loot nifeather:rng/1-10

#Count
execute store result entity @e[distance=..1, sort=nearest, type=experience_orb, limit=1] Count int 1 run loot spawn ~ ~ ~ loot nifeather:rng/1-10