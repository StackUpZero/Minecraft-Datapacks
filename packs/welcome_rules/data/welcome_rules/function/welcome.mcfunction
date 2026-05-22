tag @s add welcome_rules_seen
tellraw @s {"text":""}
tellraw @s {"text":"━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━","color":"dark_gray"}
tellraw @s {"text":"Welcome to StackUpZero's Server (MC 26.1.2)","color":"gold","bold":true}
tellraw @s [{"text":"View Rules here -> ","color":"gray"},{"text":"[CLICK TO VIEW RULES]","color":"aqua","bold":true,"underlined":true,"click_event":{"action":"run_command","command":"/trigger rules"},"hover_event":{"action":"show_text","value":"Click to open the server rules"}}]
tellraw @s {"text":"━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━","color":"dark_gray"}
tellraw @s {"text":""}
