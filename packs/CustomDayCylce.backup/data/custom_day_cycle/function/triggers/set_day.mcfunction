execute if score @s cdc_day matches 1..1440 run scoreboard players operation #day_min cdc = @s cdc_day
execute if score @s cdc_day matches 1..1440 run tellraw @s [{"text":"Day cycle time set to ","color":"green"},{"score":{"name":"#day_min","objective":"cdc"}},{"text":" real minutes.","color":"gray"}]
execute if score @s cdc_day matches ..0 run tellraw @s {"text":"Invalid day time. Use 1-1440 real minutes.","color":"red"}
execute if score @s cdc_day matches 1441.. run tellraw @s {"text":"Invalid day time. Use 1-1440 real minutes.","color":"red"}
scoreboard players set @s cdc_day 0
function custom_day_cycle:config
