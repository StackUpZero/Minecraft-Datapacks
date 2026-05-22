scoreboard players enable @a dpcs_mobs
execute as @a[scores={dpcs_mobs=1..}] run function command_suite:pages/mob_kill_sidebar
scoreboard players reset @a[scores={dpcs_mobs=1..}] dpcs_mobs
