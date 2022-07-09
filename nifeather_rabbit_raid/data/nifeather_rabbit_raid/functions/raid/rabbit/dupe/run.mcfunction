#增加总量
#nrr_rabbits一般会在loop里每刻刷新一次，但兔子复制都是在同一刻里完成的，因此需要手动+1
scoreboard players add $nrr_rabbits nrr_stats 1

#召唤兔子
function nifeather_rabbit_raid:raid/rabbit/spawn/summon/boot