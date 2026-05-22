tellraw @s {"text":""}
tellraw @s {"text":"========== TRAVEL COUNTER ==========","color":"green","bold":true}
tellraw @s [{"text":"Show travel sidebar: ","color":"white"},{"text":"/scoreboard objectives setdisplay sidebar travel_blocks","color":"aqua","underlined":true,"click_event":{"action":"suggest_command","command":"/scoreboard objectives setdisplay sidebar travel_blocks"},"hover_event":{"action":"show_text","value":"Click to paste this command into chat"}}]
tellraw @s [{"text":"Hide current sidebar: ","color":"white"},{"text":"/scoreboard objectives setdisplay sidebar","color":"aqua","underlined":true,"click_event":{"action":"suggest_command","command":"/scoreboard objectives setdisplay sidebar"},"hover_event":{"action":"show_text","value":"Click to paste this command into chat"}}]
tellraw @s {"text":""}
tellraw @s [{"text":"← Back to datapack list","color":"gold","underlined":true,"click_event":{"action":"run_command","command":"/trigger dpcsuite"},"hover_event":{"action":"show_text","value":"Click to go back"}}]
