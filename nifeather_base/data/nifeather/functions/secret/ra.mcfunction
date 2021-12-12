execute if predicate nifeather:entity_properties/is_sneaking run player dwker1 sneak
execute if predicate nifeather:entity_properties/is_sprinting run player dwker1 sprint
execute if predicate nifeather:entity_properties/not_sneaking run player dwker1 unsneak
execute if predicate nifeather:entity_properties/not_sprinting run player dwker1 unsprint

execute if predicate nifeather:entity_properties/is_sneaking run player dwker0 sneak
execute if predicate nifeather:entity_properties/is_sprinting run player dwker0 sprint
execute if predicate nifeather:entity_properties/not_sneaking run player dwker0 unsneak
execute if predicate nifeather:entity_properties/not_sprinting run player dwker0 unsprint

execute if entity @s[scores={jumps=1..}] run player dwker0 jump
execute if entity @s[scores={jumps=1..}] run player dwker1 jump
scoreboard players set @s jumps 0

#execute if predicate nifeather:entity_properties/not_sneaking run player dwker0 look at ^ ^1.6 ^2
#execute if predicate nifeather:entity_properties/not_sneaking run player dwker1 look at ^ ^1.6 ^2
#
#execute if predicate nifeather:entity_properties/is_sneaking run player dwker0 look at ^ ^1.2 ^2
#execute if predicate nifeather:entity_properties/is_sneaking run player dwker1 look at ^ ^1.2 ^2
#effect give @s invisibility 3 1