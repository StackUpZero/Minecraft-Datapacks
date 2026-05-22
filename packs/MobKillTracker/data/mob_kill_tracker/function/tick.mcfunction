scoreboard players enable @a mobkills

execute as @a if score @s mobkills matches 1.. run function mob_kill_tracker:menu/show
scoreboard players set @a[scores={mobkills=1..}] mobkills 0
