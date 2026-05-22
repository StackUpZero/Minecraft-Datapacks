scoreboard players enable @a dpcs_cdc
execute as @a if score @s dpcs_cdc matches 1.. run function command_suite:pages/custom_day_cycle
scoreboard players set @a[scores={dpcs_cdc=1..}] dpcs_cdc 0
