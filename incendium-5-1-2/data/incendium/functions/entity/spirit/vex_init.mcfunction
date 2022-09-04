# from: entity/mobs/init
# @s: spirit

attribute @s generic.movement_speed base set 1.1
attribute @s generic.max_health base set 1

item replace entity @s weapon.mainhand with air

effect give @s fire_resistance 999999 0 true
effect give @s invisibility 999999 0 true

tag @s add in.checked
tag @s add in.ticking_entity

data modify entity @s DeathLootTable set value 'incendium:entity/spirit'
