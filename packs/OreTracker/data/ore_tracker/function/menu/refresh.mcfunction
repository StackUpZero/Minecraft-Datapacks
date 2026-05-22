tag @a remove oretracker_display
tag @s add oretracker_display

function ore_tracker:internal/update_display

scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay sidebar ore_stats

scoreboard players set #shown ot_state 1
tellraw @s {"text":"OreTracker sidebar refreshed.","color":"green"}
