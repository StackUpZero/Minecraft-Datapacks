scoreboard players set TestValue ore_stats 99
scoreboard objectives setdisplay sidebar ore_stats
tellraw @s {"text":"OreTracker test value added. Sidebar should show TestValue: 99.","color":"gold"}
