execute if score @s nifeather.limbo.spreadSurfaceFind.retries matches 10.. run function nifeather_extras:limbo/paper_workaround/get_surface_fail
execute if score @s nifeather.limbo.spreadSurfaceFind.retries matches ..9 run spreadplayers ~ ~ 0 10 under 3 false @s

#检查是否传到了水里
execute at @s unless block ~ ~ ~ water run function nifeather_extras:limbo/paper_workaround/get_surface_run

scoreboard players add @s nifeather.limbo.spreadSurfaceFind.retries 1