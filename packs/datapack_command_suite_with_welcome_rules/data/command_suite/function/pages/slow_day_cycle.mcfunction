tellraw @s {"text":""}
tellraw @s {"text":"========== SLOW DAY CYCLE ==========","color":"yellow","bold":true}
tellraw @s [{"text":"Start 90-minute day cycle: ","color":"white"},{"text":"/function slow_day_cycle:start","color":"aqua","underlined":true,"click_event":{"action":"suggest_command","command":"/function slow_day_cycle:start"},"hover_event":{"action":"show_text","value":"Click to paste this command into chat"}}]
tellraw @s [{"text":"Stop and restore vanilla time: ","color":"white"},{"text":"/function slow_day_cycle:stop","color":"aqua","underlined":true,"click_event":{"action":"suggest_command","command":"/function slow_day_cycle:stop"},"hover_event":{"action":"show_text","value":"Click to paste this command into chat"}}]
tellraw @s [{"text":"Check status: ","color":"white"},{"text":"/function slow_day_cycle:status","color":"aqua","underlined":true,"click_event":{"action":"suggest_command","command":"/function slow_day_cycle:status"},"hover_event":{"action":"show_text","value":"Click to paste this command into chat"}}]
tellraw @s {"text":""}
tellraw @s [{"text":"← Back to datapack list","color":"gold","underlined":true,"click_event":{"action":"run_command","command":"/trigger dpcsuite"},"hover_event":{"action":"show_text","value":"Click to go back"}}]
