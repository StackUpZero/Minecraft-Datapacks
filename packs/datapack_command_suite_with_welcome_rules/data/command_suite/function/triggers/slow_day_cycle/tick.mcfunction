scoreboard players enable @a dpcs_slow
execute as @a[scores={dpcs_slow=1..}] run function command_suite:pages/slow_day_cycle
scoreboard players reset @a[scores={dpcs_slow=1..}] dpcs_slow
