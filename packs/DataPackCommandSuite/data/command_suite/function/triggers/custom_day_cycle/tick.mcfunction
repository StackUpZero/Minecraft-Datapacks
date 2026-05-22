scoreboard players enable @a dpcsuite_custom_day_cycle
execute as @a if score @s dpcsuite_custom_day_cycle matches 1.. run function command_suite:pages/custom_day_cycle
scoreboard players set @a[scores={dpcsuite_custom_day_cycle=1..}] dpcsuite_custom_day_cycle 0
