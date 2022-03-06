execute if entity @s[tag=enabledSpParticle] run tag @s add eePT
#declare tag enabledSpParticle 是否启用疾行粒子

execute if entity @s[tag=!enabledSpParticle] run function hub:sprinit_timer/particle_toggle/on
execute if entity @s[tag=eePT] run function hub:sprinit_timer/particle_toggle/off