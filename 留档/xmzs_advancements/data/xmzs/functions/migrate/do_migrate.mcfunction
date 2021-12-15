#检查是否有迁移过
#0: 没有， 1: 有
execute store success score @s nife_stats run scoreboard players get @s xmzs_migrate_lv
execute if score @s nife_stats matches 0 run function xmzs:migrate/player_init

#开始迁移
execute if score @s xmzs_migrate_lv matches 0 run function xmzs:migrate/0_obsoleted_attributes
execute if score @s xmzs_migrate_lv matches 1 run function xmzs:migrate/1_advancement_namespace_changes

#善后
scoreboard players add @s xmzs_migrate_lv 1
execute if score @s xmzs_migrate_lv = #migrateTarget xmzs_migrate_lv run tellraw @s {"translate": "text.nifeather.log","color": "green","with": ["数据更新已完成"]}
execute if score @s xmzs_migrate_lv < #migrateTarget xmzs_migrate_lv run function xmzs:migrate/do_migrate