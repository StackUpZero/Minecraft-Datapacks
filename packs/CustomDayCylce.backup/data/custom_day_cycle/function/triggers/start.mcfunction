scoreboard players set @s cdc_start 0
scoreboard players set #enabled cdc 1
scoreboard players set #phase cdc 0
scoreboard players set #phase_progress cdc 0
scoreboard players set #acc cdc 0
gamerule advance_time false
time set day
tellraw @s [{"text":"CustomDayCylce started. ","color":"green"},{"text":"Vanilla time disabled; custom cycle started from day.","color":"gray"}]
