scoreboard players enable @a dpcs_ore
execute as @a if score @s dpcs_ore matches 1.. run function command_suite:pages/ore_tracker
scoreboard players set @a[scores={dpcs_ore=1..}] dpcs_ore 0
