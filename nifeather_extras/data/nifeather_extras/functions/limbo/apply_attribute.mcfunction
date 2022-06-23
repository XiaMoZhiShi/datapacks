attribute @s generic.movement_speed modifier add 0-1-0-0-0 "limbo" -0.5 multiply
attribute @s generic.attack_damage modifier add 0-1-0-0-0 "limbo" -0.5 multiply
attribute @s generic.armor modifier add 0-1-0-0-0 "limbo" -0.3 multiply
attribute @s generic.knockback_resistance modifier add 0-1-1-0-0 "limbo" 1.3 multiply

effect give @s darkness 5 1 true

scoreboard players add @s nifeather.limbo.darknessLevel 1
execute if score @s nifeather.limbo.darknessLevel matches 5.. run effect give @s wither 3 1 true