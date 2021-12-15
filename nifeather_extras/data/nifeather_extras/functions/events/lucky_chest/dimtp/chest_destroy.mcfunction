data merge block ~ ~ ~ {CustomName: '{"italic": false, "text": " ", "obfuscated": true}'}
setblock ~ ~ ~ air destroy

#data merge entity @e[type=item, distance=..1, sort=nearest, limit=1] {Item:{tag: {BlockEntityTag:{LootTable:"nifeather_extras:chest_random/dimension_tp"}}}}