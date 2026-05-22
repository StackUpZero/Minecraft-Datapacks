scoreboard players enable @a dpcs_wood
execute as @a if score @s dpcs_wood matches 1.. run function command_suite:pages/wood_cutter
scoreboard players set @a[scores={dpcs_wood=1..}] dpcs_wood 0
