tag @s add __ne_racer_queue
tellraw @s {"translate":"text.hub.hint", "with":["\uE25A", "成功加入游戏！请坐在船上等待开始"]}
tellraw @a {"translate":"text.hub.hint", "with":["\uE25A", [{"selector":"@s"}, "已加入"]]}