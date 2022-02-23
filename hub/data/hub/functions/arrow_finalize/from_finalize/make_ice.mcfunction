scoreboard players add @s xmzs_find_water_retries 1

#bug: 原版MC中用positioned ~ ~1 ~执行make_ice,函数中"~ ~ ~"的值永远不会更新
#是传统艺能还是我哪里搞错了?
execute at @s unless block ~ ~ ~ air run tp @s ~ ~1 ~
execute at @s if score @s xmzs_find_water_retries matches ..10 unless block ~ ~ ~ air run function hub:arrow_finalize/from_finalize/make_ice

#设计: 调用make_ice后冻结附近的水面
#实际: 
execute at @s if block ~ ~ ~ air run function hub:arrow_finalize/from_finalize/make_ice_find_surface
