scoreboard players reset @s
kill @s

summon arrow ~ ~ ~ {Motion:[1.5, -2.5, 0.0], Tags:["no_anim", "from_finalize"], NoGravity: 1b}
summon arrow ~ ~ ~ {Motion:[-1.5, -2.5, 0.0], Tags:["no_anim", "from_finalize"], NoGravity: 1b}

summon arrow ~ ~ ~ {Motion:[0.0, -2.5, 1.5], Tags:["no_anim", "from_finalize"], NoGravity: 1b}
summon arrow ~ ~ ~ {Motion:[0.0, -2.5, -1.5], Tags:["no_anim", "from_finalize"], NoGravity: 1b}

summon arrow ~ ~ ~ {Motion:[1.5, -2.5, 1.5], Tags:["no_anim", "from_finalize"], NoGravity: 1b}
summon arrow ~ ~ ~ {Motion:[1.5, -2.5, -1.5], Tags:["no_anim", "from_finalize"], NoGravity: 1b}

summon arrow ~ ~ ~ {Motion:[-1.5, -2.5, -1.5], Tags:["no_anim", "from_finalize"], NoGravity: 1b}
summon arrow ~ ~ ~ {Motion:[-1.5, -2.5, 1.5], Tags:["no_anim", "from_finalize"], NoGravity: 1b}
execute as @e[type=arrow, limit=1, sort=nearest] run data modify entity @s Owner merge from entity @e[tag=xmzs_arrow_finalize_anim, limit=1, sort=nearest] Owner

#declare tag no_anim
#declare tag from_finalize