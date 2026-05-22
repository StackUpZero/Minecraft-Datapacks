scoreboard players enable @a mobkills

execute as @a[scores={mobkills=1..}] if score @s mobkills_state matches 1 run function mob_kill_sidebar:hide
execute as @a[scores={mobkills=1..}] unless score @s mobkills_state matches 1 run function mob_kill_sidebar:show

execute as @a[tag=mobkills_viewer,limit=1] run function mob_kill_sidebar:update_display
