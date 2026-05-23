scoreboard players set #denom cdc 0
execute if score #phase cdc matches 0 run scoreboard players operation #denom cdc = #day_min cdc
execute if score #phase cdc matches 1 run scoreboard players operation #denom cdc = #night_min cdc
scoreboard players operation #denom cdc *= #const_1200 cdc

scoreboard players operation #acc cdc += #const_12000 cdc
scoreboard players operation #to_add cdc = #acc cdc
scoreboard players operation #to_add cdc /= #denom cdc
scoreboard players operation #acc cdc %= #denom cdc

execute if score #to_add cdc matches 1.. run function custom_day_cycle:internal/add_loop
