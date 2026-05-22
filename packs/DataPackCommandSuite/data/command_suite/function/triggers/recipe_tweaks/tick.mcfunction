scoreboard players enable @a dpcs_rec
execute as @a if score @s dpcs_rec matches 1.. run function command_suite:pages/recipe_tweaks
scoreboard players set @a[scores={dpcs_rec=1..}] dpcs_rec 0
