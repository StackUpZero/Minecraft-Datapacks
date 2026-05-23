scoreboard players enable @a customdaycycle
scoreboard players enable @a cdc_start
scoreboard players enable @a cdc_stop
scoreboard players enable @a cdc_vanilla
scoreboard players enable @a cdc_config
scoreboard players enable @a cdc_day
scoreboard players enable @a cdc_night

execute as @a if score @s customdaycycle matches 1.. run function custom_day_cycle:menu
execute as @a if score @s cdc_start matches 1.. run function custom_day_cycle:triggers/start
execute as @a if score @s cdc_stop matches 1.. run function custom_day_cycle:triggers/stop
execute as @a if score @s cdc_vanilla matches 1.. run function custom_day_cycle:triggers/vanilla
execute as @a if score @s cdc_config matches 1.. run function custom_day_cycle:config
execute as @a if score @s cdc_day matches 1.. run function custom_day_cycle:triggers/set_day
execute as @a if score @s cdc_night matches 1.. run function custom_day_cycle:triggers/set_night

execute if score #enabled cdc matches 1 run function custom_day_cycle:internal/run
