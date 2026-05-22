scoreboard players enable @a oretracker
scoreboard players enable @a ore_toggle
scoreboard players enable @a ore_show
scoreboard players enable @a ore_hide
scoreboard players enable @a ore_refresh
scoreboard players enable @a ore_debug
scoreboard players enable @a ore_test

execute as @a[tag=oretracker_display] run function ore_tracker:internal/update_display

execute as @a if score @s oretracker matches 1.. run function ore_tracker:menu/main
scoreboard players set @a[scores={oretracker=1..}] oretracker 0

execute as @a if score @s ore_toggle matches 1.. run function ore_tracker:menu/toggle
scoreboard players set @a[scores={ore_toggle=1..}] ore_toggle 0

execute as @a if score @s ore_show matches 1.. run function ore_tracker:menu/show
scoreboard players set @a[scores={ore_show=1..}] ore_show 0

execute as @a if score @s ore_hide matches 1.. run function ore_tracker:menu/hide
scoreboard players set @a[scores={ore_hide=1..}] ore_hide 0

execute as @a if score @s ore_refresh matches 1.. run function ore_tracker:menu/refresh
scoreboard players set @a[scores={ore_refresh=1..}] ore_refresh 0

execute as @a if score @s ore_debug matches 1.. run function ore_tracker:menu/debug
scoreboard players set @a[scores={ore_debug=1..}] ore_debug 0

execute as @a if score @s ore_test matches 1.. run function ore_tracker:menu/test_display
scoreboard players set @a[scores={ore_test=1..}] ore_test 0
