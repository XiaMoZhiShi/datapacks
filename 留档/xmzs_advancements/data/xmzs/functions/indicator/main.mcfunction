scoreboard players operation @s nife_eHDistance = @s nife_elytraFly
scoreboard players operation @s nife_eHDistance /= #1m nife_stats

scoreboard players operation @s nife_sHDistance = @s nife_waterSwim
scoreboard players operation @s nife_sHDistance /= #1m nife_stats

scoreboard players operation @s nife_rHDistance = @s nife_runDistance
scoreboard players operation @s nife_rHDistance /= #1m nife_stats

title @s actionbar [{"translate": "%1$s%3427655$s","with": ["缺少资源包qmq",{"translate": "text.xmzs.indicator.container","with": [{"translate": "text.xmzs.indicator.elytra","with": [{"score": {"name": "@s","objective": "nife_eHDistance"},"color": "light_purple"},{"translate": "xmzs.units.meter","color": "light_gray"}]},{"translate": "text.xmzs.indicator.run","with": [{"score": {"name": "@s","objective": "nife_rHDistance"},"color": "green"},{"translate": "xmzs.units.meter","color": "light_gray"}]},{"translate": "text.xmzs.indicator.swim","with": [{"score": {"name": "@s","objective": "nife_sHDistance"},"color": "aqua"},{"translate": "xmzs.units.meter","color": "light_gray"}]}]}],"bold": true}]