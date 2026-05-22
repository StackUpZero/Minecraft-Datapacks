tellraw @s {"text":""}
tellraw @s {"text":"========== MOB KILL SIDEBAR ==========","color":"red","bold":true}
tellraw @s [{"text":"Toggle with trigger: ","color":"white"},{"text":"/trigger mobkills","color":"aqua","underlined":true,"click_event":{"action":"suggest_command","command":"/trigger mobkills"},"hover_event":{"action":"show_text","value":"Click to paste this command into chat"}}]
tellraw @s [{"text":"Force show: ","color":"white"},{"text":"/function mob_kill_sidebar:show","color":"aqua","underlined":true,"click_event":{"action":"suggest_command","command":"/function mob_kill_sidebar:show"},"hover_event":{"action":"show_text","value":"Click to paste this command into chat"}}]
tellraw @s [{"text":"Force hide: ","color":"white"},{"text":"/function mob_kill_sidebar:hide","color":"aqua","underlined":true,"click_event":{"action":"suggest_command","command":"/function mob_kill_sidebar:hide"},"hover_event":{"action":"show_text","value":"Click to paste this command into chat"}}]
tellraw @s {"text":""}
tellraw @s [{"text":"← Back to datapack list","color":"gold","underlined":true,"click_event":{"action":"run_command","command":"/trigger dpcsuite"},"hover_event":{"action":"show_text","value":"Click to go back"}}]
