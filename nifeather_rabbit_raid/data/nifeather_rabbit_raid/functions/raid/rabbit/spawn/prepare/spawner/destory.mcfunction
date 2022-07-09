#检查是否真的是生成器
execute if entity @s[tag=nrr_spawner] run function nifeather_rabbit_raid:raid/rabbit/spawn/prepare/spawner/destory_real
execute unless entity @s[tag=nrr_spawner] run tellraw @a {"translate":"text.hub.hint", "with":["?", {"text":"destory被调用，但", "extra":["执行方", {"selector": "@s"}, "并没有nrr_spawner标签，将拒绝执行。"]}]}