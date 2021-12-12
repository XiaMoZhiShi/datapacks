tp dwker0 @s
execute if predicate nifeather:entity_properties/is_sneaking run player dwker0 sneak
execute if predicate nifeather:entity_properties/is_sprinting run player dwker0 sprint
execute if predicate nifeather:entity_properties/not_sneaking run player dwker0 unsneak
execute if predicate nifeather:entity_properties/not_sprinting run player dwker0 unsprint
effect give @s invisibility 3 1