scoreboard players enable @a dpcs_wel
execute as @a if score @s dpcs_wel matches 1.. run function command_suite:pages/welcome_pack
scoreboard players set @a[scores={dpcs_wel=1..}] dpcs_wel 0
