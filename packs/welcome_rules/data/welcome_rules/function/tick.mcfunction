scoreboard players enable @a rules
execute as @a unless entity @s[tag=welcome_rules_seen] run function welcome_rules:welcome
execute as @a[scores={rules=1..}] run function welcome_rules:show_rules
scoreboard players set @a[scores={rules=1..}] rules 0
