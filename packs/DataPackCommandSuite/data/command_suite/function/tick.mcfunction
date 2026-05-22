scoreboard players enable @a dpcsuite
execute as @a[scores={dpcsuite=1..}] run function command_suite:menu
scoreboard players reset @a[scores={dpcsuite=1..}] dpcsuite
function #command_suite:tick_pages
