# from: mob/main
# @s: pillagers holding holy wrath

tag @s add in.self
execute anchored eyes as @e[type=#arrows,distance=..3,tag=!in.checked] run function incendium:sanctum/guardian/check_arrow

# reapply, jank
effect give @s[predicate=incendium:random/1] fire_resistance 1000000 2 true

tag @s remove in.self
