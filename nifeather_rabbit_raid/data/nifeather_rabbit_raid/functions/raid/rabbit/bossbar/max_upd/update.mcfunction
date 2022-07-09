#   private int totalMaxHealth;
#   ...
#       //目前每只兔子的最大血量都是一样的，不需要挨个计算
#       var tMH = rabbits;
#       tMH = rabbits;
#       tMH *= maxHealthPerRabbit;
#       totalMaxHealth = Math.max(tMH, totalMaxHealth);
#   ...

scoreboard players operation $nrr_rabbitTotalMaxHealthTemp nrr_stats = $nrr_rabbits nrr_stats
scoreboard players operation $nrr_rabbitTotalMaxHealthTemp nrr_stats *= $nrr_rabbitMaxHealth nrr_options
execute if score $nrr_rabbitTotalMaxHealthTemp nrr_stats > $nrr_rabbitTotalMaxHealth nrr_stats run scoreboard players operation $nrr_rabbitTotalMaxHealth nrr_stats = $nrr_rabbitTotalMaxHealthTemp nrr_stats

#更新bossbar
execute store result bossbar nrr_display max run scoreboard players get $nrr_rabbitTotalMaxHealth nrr_stats