scoreboard players reset @s
kill @s

summon arrow ~ ~ ~ {Motion:[1.2, -2.5, 0.0], Tags:["no_anim", "from_finalize"], NoGravity: 1b}
summon arrow ~ ~ ~ {Motion:[-1.2, -2.5, 0.0], Tags:["no_anim", "from_finalize"], NoGravity: 1b}

summon arrow ~ ~ ~ {Motion:[0.0, -2.5, 1.2], Tags:["no_anim", "from_finalize"], NoGravity: 1b}
summon arrow ~ ~ ~ {Motion:[0.0, -2.5, -1.2], Tags:["no_anim", "from_finalize"], NoGravity: 1b}

summon arrow ~ ~ ~ {Motion:[1.2, -2.5, 1.2], Tags:["no_anim", "from_finalize"], NoGravity: 1b}
summon arrow ~ ~ ~ {Motion:[1.2, -2.5, -1.2], Tags:["no_anim", "from_finalize"], NoGravity: 1b}

summon arrow ~ ~ ~ {Motion:[-1.2, -2.5, -1.2], Tags:["no_anim", "from_finalize"], NoGravity: 1b}
summon arrow ~ ~ ~ {Motion:[-1.2, -2.5, 1.2], Tags:["no_anim", "from_finalize"], NoGravity: 1b}

execute if entity @s[tag=no_forst] run tag @e[type=arrow, sort=nearest, tag=!xmzs_arrow_finalize_anim, distance=..1] add no_forst

#declare tag no_anim
#declare tag from_finalize