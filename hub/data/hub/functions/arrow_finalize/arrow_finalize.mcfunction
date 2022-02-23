execute unless entity @s[tag=no_anim] if entity @s[tag=isCrit] run summon arrow ~ ~ ~ {Tags:["xmzs_arrow_finalize_anim"], NoGravity: 1b, Motion:[0.0, 1.0, 0.0], crit: 1b}
data modify entity @e[type=arrow, limit=1, sort=nearest, tag=xmzs_arrow_finalize_anim] Owner merge from entity @s Owner
#declare tag xmzs_arrow_finalize_anim sds

kill @s[tag=!xmzs_arrow_finalize_anim]