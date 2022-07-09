#移除属性
tag @e[tag=nrr_centre] remove nrr_show_conditionProgress
tag @e[tag=nrr_centre] remove nrr_c_completed

#显示消息
tellraw @a[tag=nrr_raid] {"translate":"text.hub.hint", "with":["?", "附加条件失败！"]}