advancement revoke @s only nifeather_extras:mechanics/drink_spread_potion
execute if predicate nifeather_extras:in_overworld run spreadplayers ~ ~ 0 100 false @s
execute if predicate nifeather:location/in_nether run spreadplayers ~ ~ 0 100 under 80 false @s