tellraw @s {"text":""}
tellraw @s {"text":"========== WELCOME & RULES ==========" ,"color":"gold","bold":true}
tellraw @s {"text":"Commands for the StackUpZero welcome/rules datapack.","color":"gray"}
tellraw @s {"text":""}
tellraw @s [{"text":"Show rules: ","color":"white"},{"text":"/trigger rules","color":"aqua","underlined":true,"click_event":{"action":"suggest_command","command":"/trigger rules"},"hover_event":{"action":"show_text","value":"Click to paste /trigger rules"}}]
tellraw @s [{"text":"Reset welcome for yourself: ","color":"white"},{"text":"/tag @s remove welcome_rules_seen","color":"aqua","underlined":true,"click_event":{"action":"suggest_command","command":"/tag @s remove welcome_rules_seen"},"hover_event":{"action":"show_text","value":"Click to paste reset command"}}]
tellraw @s [{"text":"Reset welcome for everyone: ","color":"white"},{"text":"/tag @a remove welcome_rules_seen","color":"aqua","underlined":true,"click_event":{"action":"suggest_command","command":"/tag @a remove welcome_rules_seen"},"hover_event":{"action":"show_text","value":"Click to paste reset command"}}]
tellraw @s {"text":""}
tellraw @s [{"text":"← Back to datapack list","color":"yellow","underlined":true,"click_event":{"action":"run_command","command":"/trigger dpcsuite"},"hover_event":{"action":"show_text","value":"Click to go back"}}]
tellraw @s {"text":"=====================================" ,"color":"gold"}
