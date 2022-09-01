execute if entity @s[tag=__n3l_noSpectatorParticle] run tag @s add __n3l_true
execute if entity @s[tag=!__n3l_noSpectatorParticle] run tag @s add __n3l_noSpectatoeParticle

tag @s[tag=!__n3l_true] add __n3l_noSpectatorParticle
tag @s[tag=__n3l_true] remove __n3l_noSpectatorParticle
tag @s remove __n3l_true

data modify storage nifeather:usersettingstemp nife.NodeNameNew set value '{"translate":"显示旁观者粒子"}'
execute if entity @s[tag=__n3l_noSpectatorParticle] run data modify storage nifeather:usersettingstemp nife.NodeValueNew set value '{"text":"禁用"}'
execute unless entity @s[tag=__n3l_noSpectatorParticle] run data modify storage nifeather:usersettingstemp nife.NodeValueNew set value '{"text":"启用"}'

function nifeather:settings/pushline/valuechange