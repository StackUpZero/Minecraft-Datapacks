scoreboard players enable @a dpcs_deep
execute as @a if score @s dpcs_deep matches 1.. run function command_suite:pages/deepslate_ore_doubler
scoreboard players set @a[scores={dpcs_deep=1..}] dpcs_deep 0
