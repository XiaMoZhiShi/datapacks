scoreboard players set @s nifeather.limbo.chestFind.retries -1

execute positioned ~ ~1.75 ~ run function nifeather_extras:events/lucky_chest/dimtp/chest_find_loop

execute unless predicate nifeather_extras:in_limbo unless predicate nifeather_extras:in_ods run function nifeather_extras:events/lucky_chest/dimtp/run_overworld
execute if predicate nifeather_extras:in_limbo run function nifeather_extras:events/lucky_chest/dimtp/run_limbo
execute if predicate nifeather_extras:in_ods run kill @s

#重置进度
advancement revoke @s only nifeather_extras:lucky_chest/dimtp