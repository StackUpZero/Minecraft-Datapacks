time add 1
scoreboard players add #phase_progress cdc 1
scoreboard players remove #to_add cdc 1
execute if score #phase_progress cdc matches 12000.. run function custom_day_cycle:internal/switch_phase
execute if score #to_add cdc matches 1.. run function custom_day_cycle:internal/add_loop
