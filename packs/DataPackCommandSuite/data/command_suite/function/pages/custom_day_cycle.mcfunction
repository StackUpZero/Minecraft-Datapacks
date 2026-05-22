tellraw @s {"text":""}
tellraw @s {"text":"========== CustomDayCylce ==========" ,"color":"gold","bold":true}
tellraw @s {"text":"Configurable real-time day/night cycle.","color":"gray"}
tellraw @s {"text":""}
tellraw @s [{"text":"Open menu: ","color":"white"},{"text":"/trigger customdaycycle","color":"aqua","underlined":true,"click_event":{"action":"suggest_command","command":"/trigger customdaycycle"},"hover_event":{"action":"show_text","value":"Click to paste /trigger customdaycycle"}}]
tellraw @s [{"text":"Start custom cycle: ","color":"white"},{"text":"/trigger cdc_start","color":"aqua","underlined":true,"click_event":{"action":"suggest_command","command":"/trigger cdc_start"},"hover_event":{"action":"show_text","value":"Click to paste /trigger cdc_start"}}]
tellraw @s [{"text":"Stop/freeze cycle: ","color":"white"},{"text":"/trigger cdc_stop","color":"aqua","underlined":true,"click_event":{"action":"suggest_command","command":"/trigger cdc_stop"},"hover_event":{"action":"show_text","value":"Click to paste /trigger cdc_stop"}}]
tellraw @s [{"text":"Restore vanilla time: ","color":"white"},{"text":"/trigger cdc_vanilla","color":"aqua","underlined":true,"click_event":{"action":"suggest_command","command":"/trigger cdc_vanilla"},"hover_event":{"action":"show_text","value":"Click to paste /trigger cdc_vanilla"}}]
tellraw @s [{"text":"Config/status page: ","color":"white"},{"text":"/trigger cdc_config","color":"aqua","underlined":true,"click_event":{"action":"suggest_command","command":"/trigger cdc_config"},"hover_event":{"action":"show_text","value":"Click to paste /trigger cdc_config"}}]
tellraw @s {"text":""}
tellraw @s [{"text":"Set day minutes: ","color":"white"},{"text":"/trigger cdc_day set ","color":"aqua","underlined":true,"click_event":{"action":"suggest_command","command":"/trigger cdc_day set "},"hover_event":{"action":"show_text","value":"Click, type minutes, press Enter"}}]
tellraw @s [{"text":"Set night minutes: ","color":"white"},{"text":"/trigger cdc_night set ","color":"aqua","underlined":true,"click_event":{"action":"suggest_command","command":"/trigger cdc_night set "},"hover_event":{"action":"show_text","value":"Click, type minutes, press Enter"}}]
tellraw @s {"text":""}
tellraw @s [{"text":"← Back to datapack list","color":"yellow","underlined":true,"click_event":{"action":"run_command","command":"/trigger dpcsuite"},"hover_event":{"action":"show_text","value":"Click to go back"}}]
tellraw @s {"text":"====================================" ,"color":"gold"}
