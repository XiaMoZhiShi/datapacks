#检查是否能触发并且是否坐在船上
execute if entity @s[tag=__ne_canTrigger] if entity @s[nbt={RootVehicle:{Entity:{id:"minecraft:boat"}}}] run function nifeather_extras:race/mark/run