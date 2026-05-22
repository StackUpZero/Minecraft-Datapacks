tellraw @s {"text":""}
tellraw @s {"text":"========== MobKillTracker ==========","color":"red","bold":true}
tellraw @s {"text":"Displays your individual mob kill stats in chat.","color":"gray"}
tellraw @s {"text":""}

tellraw @s [{"text":"Show mob kills: ","color":"white"},{"text":"/trigger mobkills","color":"aqua","underlined":true,"click_event":{"action":"run_command","command":"/trigger mobkills"},"hover_event":{"action":"show_text","value":"Show your mob kill stats"}}]

tellraw @s {"text":""}
tellraw @s [{"text":"← Back to datapack list","color":"yellow","underlined":true,"click_event":{"action":"run_command","command":"/trigger dpcsuite"},"hover_event":{"action":"show_text","value":"Click to go back"}}]
tellraw @s {"text":"===================================","color":"red"}
