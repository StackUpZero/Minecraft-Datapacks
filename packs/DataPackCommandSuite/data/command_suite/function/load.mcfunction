scoreboard objectives add dpcsuite trigger
function #command_suite:load_pages
tellraw @a [{"text":"Command Suite loaded. Use ","color":"green"},{"text":"/trigger dpcsuite","color":"aqua","underlined":true,"click_event":{"action":"suggest_command","command":"/trigger dpcsuite"},"hover_event":{"action":"show_text","value":"Click to paste"}}]
