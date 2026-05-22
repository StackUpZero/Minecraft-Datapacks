scoreboard players enable @a ores

execute as @a if score @s ores matches 1.. run function ore_tracker:menu/show
scoreboard players set @a[scores={ores=1..}] ores 0
