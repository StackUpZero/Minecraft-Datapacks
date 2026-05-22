scoreboard players enable @a dpcsuite_welcome_rules
execute as @a[scores={dpcsuite_welcome_rules=1..}] run function command_suite:pages/welcome_rules
scoreboard players set @a[scores={dpcsuite_welcome_rules=1..}] dpcsuite_welcome_rules 0
