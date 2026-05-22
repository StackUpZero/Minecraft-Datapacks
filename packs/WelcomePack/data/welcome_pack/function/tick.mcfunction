scoreboard players enable @a rules

execute as @a[tag=!welcome_pack_seen] run function welcome_pack:welcome
execute as @a[tag=!welcome_pack_seen] run tag @s add welcome_pack_seen

execute as @a[scores={wp_leave=1..}] run function welcome_pack:welcome
scoreboard players set @a[scores={wp_leave=1..}] wp_leave 0

execute as @a[scores={rules=1..}] run function welcome_pack:rules
scoreboard players set @a[scores={rules=1..}] rules 0
