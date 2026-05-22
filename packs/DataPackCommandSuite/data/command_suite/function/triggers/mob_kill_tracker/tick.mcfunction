scoreboard players enable @a dpcs_mkt
execute as @a if score @s dpcs_mkt matches 1.. run function command_suite:pages/mob_kill_tracker
scoreboard players set @a[scores={dpcs_mkt=1..}] dpcs_mkt 0
