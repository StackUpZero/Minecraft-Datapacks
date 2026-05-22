tellraw @s {"text":""}
tellraw @s {"text":"========== OreTracker ==========","color":"gold","bold":true}
tellraw @s {"text":"Displays your mined ore stats in chat.","color":"gray"}
tellraw @s {"text":""}

tellraw @s [{"text":"Show ore stats: ","color":"white"},{"text":"/trigger ores","color":"aqua","underlined":true,"click_event":{"action":"run_command","command":"/trigger ores"},"hover_event":{"action":"show_text","value":"Show your ore stats"}}]

tellraw @s {"text":""}
tellraw @s [{"text":"← Back to datapack list","color":"yellow","underlined":true,"click_event":{"action":"run_command","command":"/trigger dpcsuite"},"hover_event":{"action":"show_text","value":"Click to go back"}}]
tellraw @s {"text":"===============================","color":"gold"}
