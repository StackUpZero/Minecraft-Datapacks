tellraw @s {"text":""}
tellraw @s {"text":"========== OreTracker ==========","color":"gold","bold":true}
tellraw @s {"text":"Toggleable sidebar showing individual ores mined.","color":"gray"}
tellraw @s {"text":"Normal and deepslate variants are combined.","color":"dark_gray"}
tellraw @s {"text":""}

tellraw @s [{"text":"Open OreTracker menu: ","color":"white"},{"text":"/trigger oretracker","color":"aqua","underlined":true,"click_event":{"action":"run_command","command":"/trigger oretracker"},"hover_event":{"action":"show_text","value":"Open OreTracker menu"}}]
tellraw @s [{"text":"Show scoreboard: ","color":"white"},{"text":"/trigger ore_show","color":"aqua","underlined":true,"click_event":{"action":"run_command","command":"/trigger ore_show"},"hover_event":{"action":"show_text","value":"Show OreTracker sidebar"}}]
tellraw @s [{"text":"Hide scoreboard: ","color":"white"},{"text":"/trigger ore_hide","color":"aqua","underlined":true,"click_event":{"action":"run_command","command":"/trigger ore_hide"},"hover_event":{"action":"show_text","value":"Hide OreTracker sidebar"}}]
tellraw @s [{"text":"Toggle scoreboard: ","color":"white"},{"text":"/trigger ore_toggle","color":"aqua","underlined":true,"click_event":{"action":"run_command","command":"/trigger ore_toggle"},"hover_event":{"action":"show_text","value":"Toggle OreTracker sidebar"}}]
tellraw @s [{"text":"Debug raw stats: ","color":"white"},{"text":"/trigger ore_debug","color":"aqua","underlined":true,"click_event":{"action":"run_command","command":"/trigger ore_debug"},"hover_event":{"action":"show_text","value":"Show raw mining stats"}}]

tellraw @s {"text":""}
tellraw @s {"text":"Safety: showing OreTracker clears any active sidebar first.","color":"yellow"}
tellraw @s {"text":""}
tellraw @s [{"text":"← Back to datapack list","color":"yellow","underlined":true,"click_event":{"action":"run_command","command":"/trigger dpcsuite"},"hover_event":{"action":"show_text","value":"Click to go back"}}]
tellraw @s {"text":"================================","color":"gold"}
