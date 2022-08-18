#随机子事件
function nifeather_3lives:tools/reset_subtitles

#随机事件
function nifeather_3lives:titles/subtitles/triggers/random
function nifeather_3lives:titles/subtitles/effects/random
function nifeather_3lives:titles/subtitles/cd_timers/random
function nifeather_3lives:titles/subtitles/timers/random

#显示给玩家
execute unless entity @s[tag=n3l_applyingPatch] run function nifeather_3lives:titles/subtitles/display/buildbuffer
execute unless entity @s[tag=n3l_applyingPatch] run tellraw @s ["", {"translate": "text.hub.hint", "color": "#dddddd", "with":["\uE3B8", {"nbt":"Output", "storage": "nifeather:n3l", "interpret": true}]}]