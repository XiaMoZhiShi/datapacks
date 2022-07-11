#   private int totalHealth;
#   ...
#       //血量需要挨个计算
#       float tH;
#
#       foreach (var rabbit in RABBITS)
#       {
#           tH = rabbit.getHealth();
#           tH = Math.Max(tH, 1);
#           totalHealth += (int)tH;
#       }
#   ...

#tH = rabbit.getHealth()
execute store result score $nrr_th nrr_bossbarTimeTracker run data get entity @s Health

#tH = Math.Max(tH, 1)
execute if score $nrr_th nrr_bossbarTimeTracker matches ..0 run scoreboard players set $nrr_th nrr_bossbarTimeTracker 1

#totalHealth += (int)tH
scoreboard players operation $nrr_rabbitTotalHealth nrr_bossbarTimeTracker += $nrr_th nrr_bossbarTimeTracker
#declare entity $nrr_tabbitTotalHealth 兔子的总血量