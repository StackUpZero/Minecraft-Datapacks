scoreboard players set #phase_progress cdc 0
scoreboard players operation #tmp cdc = #phase cdc
execute if score #tmp cdc matches 0 run scoreboard players set #phase cdc 1
execute if score #tmp cdc matches 1 run scoreboard players set #phase cdc 0
