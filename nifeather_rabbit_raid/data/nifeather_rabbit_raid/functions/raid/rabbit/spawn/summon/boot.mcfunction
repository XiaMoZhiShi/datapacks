#召唤兔子
#bug: 跟随距离不设置2048会导致之后更改大小不生效
summon rabbit ~ ~ ~ {RabbitType: 99, Health: 5, Tags: ["nrr_rabbit", "proc"], CustomName:'{"text":"多兔"}', CustomNameVisible: 0b, Attributes:[{Name:"minecraft:generic.follow_range", Base: 2048d}], DeathLootTable: ""}
#declare tag nrr_rabbit 兔子是否为NRR生成的

#生成后要运行的东西（应用属性修改等）
execute as @e[tag=proc, sort=nearest, limit=1] at @s run function nifeather_rabbit_raid:raid/rabbit/spawn/summon/postsummon