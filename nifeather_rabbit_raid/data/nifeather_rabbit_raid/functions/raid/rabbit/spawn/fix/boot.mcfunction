#向admin播报消息
tellraw @a[tag=admin] {"translate":"text.hub.hint", "with":["?", {"text":"有","extra":[{"score":{"objective":"nrr_stats","name":"$nrr_spreadFails"}},"个生成器未能找到合适的刷新点，将尝试随机刷新"]}]}

#补齐兔子
function nifeather_rabbit_raid:raid/rabbit/spawn/fix/run