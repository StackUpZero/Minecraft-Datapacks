scoreboard players enable @a dpcs_general
execute as @a[scores={dpcs_general=1..}] run function command_suite:pages/general
scoreboard players reset @a[scores={dpcs_general=1..}] dpcs_general
