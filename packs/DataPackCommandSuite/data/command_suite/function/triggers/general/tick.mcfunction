scoreboard players enable @a dpcs_gen
execute as @a if score @s dpcs_gen matches 1.. run function command_suite:pages/general
scoreboard players set @a[scores={dpcs_gen=1..}] dpcs_gen 0
