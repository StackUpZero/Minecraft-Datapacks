scoreboard players enable @a dpcs_travel
execute as @a[scores={dpcs_travel=1..}] run function command_suite:pages/travel_counter
scoreboard players reset @a[scores={dpcs_travel=1..}] dpcs_travel
