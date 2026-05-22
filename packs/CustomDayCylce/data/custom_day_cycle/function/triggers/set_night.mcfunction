execute if score @s cdc_night matches 1..1440 run scoreboard players operation #night_min cdc = @s cdc_night
execute if score @s cdc_night matches 1..1440 run tellraw @s [{"text":"Night cycle time set to ","color":"green"},{"score":{"name":"#night_min","objective":"cdc"}},{"text":" real minutes.","color":"gray"}]
execute if score @s cdc_night matches ..0 run tellraw @s {"text":"Invalid night time. Use 1-1440 real minutes.","color":"red"}
execute if score @s cdc_night matches 1441.. run tellraw @s {"text":"Invalid night time. Use 1-1440 real minutes.","color":"red"}
scoreboard players set @s cdc_night 0
function custom_day_cycle:config
