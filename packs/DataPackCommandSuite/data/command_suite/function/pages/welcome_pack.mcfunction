tellraw @s {"text":""}
tellraw @s {"text":"========== WelcomePack ==========","color":"red","bold":true}
tellraw @s {"text":"Join welcome message and server rules.","color":"gray"}
tellraw @s {"text":""}

tellraw @s [{"text":"View rules: ","color":"white"},{"text":"/trigger rules","color":"aqua","underlined":true,"click_event":{"action":"suggest_command","command":"/trigger rules"},"hover_event":{"action":"show_text","value":"Click to paste /trigger rules"}}]

tellraw @s {"text":""}
tellraw @s [{"text":"← Back to datapack list","color":"yellow","underlined":true,"click_event":{"action":"run_command","command":"/trigger dpcsuite"},"hover_event":{"action":"show_text","value":"Click to go back"}}]
tellraw @s {"text":"=================================","color":"red"}
