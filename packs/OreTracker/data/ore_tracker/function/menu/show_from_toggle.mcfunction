tag @a remove oretracker_display
tag @s add oretracker_display

function ore_tracker:internal/update_display

scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay sidebar ore_stats

scoreboard players set #shown ot_state 2
tellraw @s {"text":"OreTracker sidebar shown.","color":"green"}
