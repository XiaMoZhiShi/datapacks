tag @s remove limbo_process
execute unless block ~ ~ ~ #nifeather_extras:limbo_lantern_feature run setblock ~ ~ ~ lantern destroy
#tellraw @s {"score":{"objective": "nifeather.limbo.spreadSurfaceFind.retries", "name": "@s"}}
tp @s ~ ~1 ~