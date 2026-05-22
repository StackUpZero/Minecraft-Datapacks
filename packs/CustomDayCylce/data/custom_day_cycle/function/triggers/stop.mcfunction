scoreboard players set @s cdc_stop 0
scoreboard players set #enabled cdc 0
scoreboard players set #acc cdc 0
gamerule advance_time false
tellraw @s [{"text":"CustomDayCylce stopped. ","color":"red"},{"text":"Time is frozen until you start custom cycle or restore vanilla time.","color":"gray"}]
