scoreboard players enable @a dpcs_tim
execute as @a if score @s dpcs_tim matches 1.. run function command_suite:pages/timber
scoreboard players set @a[scores={dpcs_tim=1..}] dpcs_tim 0
