tag @s remove limbo_process
setblock ~ ~ ~ lantern destroy
tellraw @s {"score":{"objective": "nifeather.limbo.spreadSurfaceFind.retries", "name": "@s"}}
tp @s ~ ~1 ~