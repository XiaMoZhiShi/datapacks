execute if entity @a[tag=0] run player dwker0 attack
execute if entity @a[tag=1] run player dwker1 attack
execute if entity @a[tag=all] run player dwker0 attack
execute if entity @a[tag=all] run player dwker1 attack

scoreboard players remove attack nife_stats 1
schedule function nifeather:secret/attack 2t