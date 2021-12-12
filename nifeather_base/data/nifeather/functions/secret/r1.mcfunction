tp Keqing____ @s
execute if predicate nifeather:entity_properties/is_sneaking run player Keqing____ sneak
execute if predicate nifeather:entity_properties/is_sprinting run player Keqing____ sprint
execute if predicate nifeather:entity_properties/not_sneaking run player Keqing____ unsneak
execute if predicate nifeather:entity_properties/not_sprinting run player Keqing____ unsprint
effect give @s invisibility 3 1