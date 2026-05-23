scoreboard players set @s customdaycycle 0
tellraw @s {"text":""}
tellraw @s {"text":"========== CustomDayCylce ==========" ,"color":"gold","bold":true}
tellraw @s {"text":"Configurable real-time day/night cycle.","color":"gray"}
tellraw @s {"text":""}
tellraw @s [{"text":"▶ Start custom cycle","color":"green","underlined":true,"click_event":{"action":"run_command","command":"/trigger cdc_start"},"hover_event":{"action":"show_text","value":"Disable vanilla time and start the custom cycle from day"}}]
tellraw @s [{"text":"■ Stop cycle / freeze time","color":"red","underlined":true,"click_event":{"action":"run_command","command":"/trigger cdc_stop"},"hover_event":{"action":"show_text","value":"Stop custom time movement, keeping vanilla time disabled"}}]
tellraw @s [{"text":"↺ Restore vanilla time","color":"yellow","underlined":true,"click_event":{"action":"run_command","command":"/trigger cdc_vanilla"},"hover_event":{"action":"show_text","value":"Disable custom cycle and restore normal Minecraft time"}}]
tellraw @s [{"text":"⚙ Config page","color":"aqua","underlined":true,"click_event":{"action":"run_command","command":"/trigger cdc_config"},"hover_event":{"action":"show_text","value":"Open current settings and edit commands"}}]
tellraw @s {"text":"====================================" ,"color":"gold"}
