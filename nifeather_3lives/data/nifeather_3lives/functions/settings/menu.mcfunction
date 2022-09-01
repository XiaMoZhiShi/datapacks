#旁观者粒子
execute unless entity @s[tag=__n3l_noSpectatorParticle] run data modify storage nifeather:usersettingstemp n3l.IsSpectatorParticleVisible set value '{"text":"启用", "color":"green"}'
execute if entity @s[tag=__n3l_noSpectatorParticle] run data modify storage nifeather:usersettingstemp n3l.IsSpectatorParticleVisible set value '{"text":"禁用", "color":"red"}'
#declare tag __n3l_noSpectatorParticle 是否显示旁观者粒子

data modify storage nifeather:usersettingstemp nife.NodeTooltip set value '{"translate":"是否要显示已经用完生命的旁观者的粒子效果"}'
data modify storage nifeather:usersettingstemp nife.NodeName set value '{"translate":"显示旁观者粒子"}'
data modify storage nifeather:usersettingstemp nife.NodeValue set value '{"nbt":"n3l.IsSpectatorParticleVisible", "storage": "nifeather:usersettingstemp", "interpret": true, "clickEvent": { "action": "run_command", "value": "/trigger n3l_settings_trigger set 1" }}'
function nifeather:settings/pushline/displayline
