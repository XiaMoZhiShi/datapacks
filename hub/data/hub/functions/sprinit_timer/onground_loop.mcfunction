scoreboard players add @s[predicate=nifeather:entity_properties/is_sprinting, predicate=nifeather:entity_properties/not_sneaking, scores={xmzs_sprinit_timer=..299}] xmzs_sprinit_timer 1
scoreboard players remove @s[predicate=nifeather:entity_properties/not_sprinting, predicate=nifeather:entity_properties/not_sneaking, scores={xmzs_sprinit_timer=1..}] xmzs_sprinit_timer 1
scoreboard players remove @s[predicate=nifeather:entity_properties/is_sneaking, scores={xmzs_sprinit_timer=2..}] xmzs_sprinit_timer 2

execute if score @s[tag=enabledSpParticle, predicate=nifeather:entity_properties/is_sprinting] xmzs_sprinit_timer matches 200.. run particle soul ~ ~ ~ 0 0 0 0.025 2