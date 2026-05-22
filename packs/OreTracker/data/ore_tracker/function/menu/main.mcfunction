tellraw @s {"text":""}
tellraw @s {"text":"========== OreTracker ==========","color":"gold","bold":true}
tellraw @s {"text":"Tracks individual ore types mined by you.","color":"gray"}
tellraw @s {"text":"Normal and deepslate variants are combined.","color":"dark_gray"}
tellraw @s {"text":""}

tellraw @s [{"text":"Show scoreboard: ","color":"white"},{"text":"/trigger ore_show","color":"aqua","underlined":true,"click_event":{"action":"run_command","command":"/trigger ore_show"},"hover_event":{"action":"show_text","value":"Show OreTracker sidebar"}}]
tellraw @s [{"text":"Hide scoreboard: ","color":"white"},{"text":"/trigger ore_hide","color":"aqua","underlined":true,"click_event":{"action":"run_command","command":"/trigger ore_hide"},"hover_event":{"action":"show_text","value":"Hide OreTracker sidebar"}}]
tellraw @s [{"text":"Toggle scoreboard: ","color":"white"},{"text":"/trigger ore_toggle","color":"aqua","underlined":true,"click_event":{"action":"run_command","command":"/trigger ore_toggle"},"hover_event":{"action":"show_text","value":"Toggle OreTracker sidebar"}}]
tellraw @s [{"text":"Refresh values: ","color":"white"},{"text":"/trigger ore_refresh","color":"aqua","underlined":true,"click_event":{"action":"run_command","command":"/trigger ore_refresh"},"hover_event":{"action":"show_text","value":"Refresh OreTracker values"}}]
tellraw @s [{"text":"Debug raw stats: ","color":"white"},{"text":"/trigger ore_debug","color":"aqua","underlined":true,"click_event":{"action":"run_command","command":"/trigger ore_debug"},"hover_event":{"action":"show_text","value":"Show raw mining stats"}}]

tellraw @s {"text":""}
tellraw @s {"text":"Safety: showing OreTracker clears any active sidebar first.","color":"yellow"}
tellraw @s {"text":"================================","color":"gold"}
