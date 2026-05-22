scoreboard players enable @a dpcs_ovm
execute as @a if score @s dpcs_ovm matches 1.. run function command_suite:pages/ore_veinminer
scoreboard players set @a[scores={dpcs_ovm=1..}] dpcs_ovm 0
