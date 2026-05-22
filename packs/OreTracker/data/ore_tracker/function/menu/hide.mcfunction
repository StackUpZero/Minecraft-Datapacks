tag @s remove oretracker_display
scoreboard objectives setdisplay sidebar
scoreboard players reset * ore_stats
scoreboard players set #shown ot_state 0
tellraw @s {"text":"OreTracker sidebar hidden.","color":"yellow"}
