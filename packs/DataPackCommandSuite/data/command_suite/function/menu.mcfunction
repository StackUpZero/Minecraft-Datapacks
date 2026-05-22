tellraw @s {"text":""}
tellraw @s {"text":"========== DATAPACK COMMAND SUITE ==========","color":"gold","bold":true}
tellraw @s {"text":"Click a datapack name to open its commands.","color":"gray"}
tellraw @s {"text":""}
function #command_suite:menu_entries
tellraw @s {"text":""}
tellraw @s [{"text":"Reload datapacks: ","color":"gray"},{"text":"/reload","color":"aqua","underlined":true,"click_event":{"action":"suggest_command","command":"/reload"},"hover_event":{"action":"show_text","value":"Click to paste /reload"}}]
tellraw @s {"text":"============================================","color":"gold"}
