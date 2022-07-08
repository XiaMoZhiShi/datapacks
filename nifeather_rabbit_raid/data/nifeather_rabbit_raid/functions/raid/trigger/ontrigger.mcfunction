advancement revoke @s only nifeather_rabbit_raid:trigger

execute at @s run function nifeather_rabbit_raid:raid/start/try

particle minecraft:lava ~ ~1 ~ 0 0 0 1 5
#declare tag nrr_canTriggerRaid 某个兔子是否能触发袭击