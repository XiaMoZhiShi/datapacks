#应用属性
tag @e[tag=nrr_centre] add nrr_c_completed
tag @e[tag=nrr_centre] remove nrr_show_conditionProgress

#显示消息
tellraw @a[tag=nrr_raid] {"translate":"text.hub.hint", "with":["?", "附加条件完成！"]}