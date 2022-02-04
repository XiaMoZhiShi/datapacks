execute unless predicate nifeather_extras:lmb_not_damageable_check/block unless predicate nifeather_extras:lmb_not_damageable_check/light unless predicate nifeather_extras:lmb_not_damageable_check/effect run tag @s add lmb_dmg

execute if entity @s[tag=lmb_dmg] run function nifeather_extras:limbo/apply_attribute

execute unless entity @s[tag=lmb_dmg] run function nifeather_extras:limbo/undo_attribute

execute run tag @s remove lmb_dmg
