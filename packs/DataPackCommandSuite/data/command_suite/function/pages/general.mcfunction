tellraw @s {"text":""}
tellraw @s {"text":"========== GENERAL / SERVER ==========","color":"light_purple","bold":true}
tellraw @s [{"text":"Open datapack command suite: ","color":"white"},{"text":"/trigger dpcsuite","color":"aqua","underlined":true,"click_event":{"action":"suggest_command","command":"/trigger dpcsuite"},"hover_event":{"action":"show_text","value":"Click to paste this command into chat"}}]
tellraw @s [{"text":"Reload datapacks: ","color":"white"},{"text":"/reload","color":"aqua","underlined":true,"click_event":{"action":"suggest_command","command":"/reload"},"hover_event":{"action":"show_text","value":"Click to paste this command into chat"}}]
tellraw @s [{"text":"List enabled datapacks: ","color":"white"},{"text":"/datapack list enabled","color":"aqua","underlined":true,"click_event":{"action":"suggest_command","command":"/datapack list enabled"},"hover_event":{"action":"show_text","value":"Click to paste this command into chat"}}]
tellraw @s {"text":""}
tellraw @s [{"text":"← Back to datapack list","color":"gold","underlined":true,"click_event":{"action":"run_command","command":"/trigger dpcsuite"},"hover_event":{"action":"show_text","value":"Click to go back"}}]
