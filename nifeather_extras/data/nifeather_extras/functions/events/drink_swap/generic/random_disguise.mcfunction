#Run RNG
#Value
execute if score #loopCounter nife_ods_timer matches 100 run function nifeather_extras:events/drink_swap/generic/fail_random_too_many_times
scoreboard players add #loopCounter nife_ods_timer 1


loot spawn ~ ~ ~ loot nifeather:rng/1-10
execute store result score @s nife_ods_rng run data get entity @e[sort=nearest, limit=1, distance=..1, type=item, nbt={Item:{tag:{RNG: 1b}}}] Item.Count
kill @e[sort=nearest, limit=1, distance=..1, type=item, nbt={Item:{tag:{RNG: 1b}}}]

execute if entity @s[name="_kinopico_"] if score @s nife_ods_rng matches 1 run function nifeather_extras:events/drink_swap/generic/random_disguise
execute if score @s[name=!"_kinopico_"] nife_ods_rng matches 1 run impersonate disguise as _kinopico_ @s

execute if entity @s[name="__Lin__"] if score @s nife_ods_rng matches 2 run function nifeather_extras:events/drink_swap/generic/random_disguise
execute if score @s[name=!"__Lin__"] nife_ods_rng matches 2 run impersonate disguise as __Lin__ @s

execute if entity @s[name="12727337483"] if score @s nife_ods_rng matches 3 run function nifeather_extras:events/drink_swap/generic/random_disguise
execute if score @s[name=!"12727337483"] nife_ods_rng matches 3 run impersonate disguise as 12727337483 @s

execute if entity @s[name="HieuHapHoi"] if score @s nife_ods_rng matches 4 run function nifeather_extras:events/drink_swap/generic/random_disguise
execute if score @s[name=!"HieuHapHoi"] nife_ods_rng matches 4 run impersonate disguise as HieuHapHoi @s

execute if entity @s[name="kiyeo"] if score @s nife_ods_rng matches 5 run function nifeather_extras:events/drink_swap/generic/random_disguise
execute if score @s[name=!"kiyeo"] nife_ods_rng matches 5 run impersonate disguise as kiyeo @s

execute if entity @s[name="Sophei"] if score @s nife_ods_rng matches 6 run function nifeather_extras:events/drink_swap/generic/random_disguise
execute if score @s[name=!"Sophei"] nife_ods_rng matches 6 run impersonate disguise as Sophei @s

execute if entity @s[name="ColdSnowFox"] if score @s nife_ods_rng matches 7 run function nifeather_extras:events/drink_swap/generic/random_disguise
execute if score @s[name=!"ColdSnowFox"] nife_ods_rng matches 7 run impersonate disguise as ColdSnowFox @s

execute if entity @s[name="ItsAryaa"] if score @s nife_ods_rng matches 8 run function nifeather_extras:events/drink_swap/generic/random_disguise
execute if score @s[name=!"ItsAryaa"] nife_ods_rng matches 8 run impersonate disguise as ItsAryaa @s

execute if entity @s[name="toxci"] if score @s nife_ods_rng matches 9 run function nifeather_extras:events/drink_swap/generic/random_disguise
execute if score @s[name=!"toxci"] nife_ods_rng matches 9 run impersonate disguise as toxci @s

execute if entity @s[name="nohac13"] if score @s nife_ods_rng matches 10 run function nifeather_extras:events/drink_swap/generic/random_disguise
execute if score @s[name=!"nohac13"] nife_ods_rng matches 10 run impersonate disguise as nohac13 @s

scoreboard players reset @s nife_ods_rng