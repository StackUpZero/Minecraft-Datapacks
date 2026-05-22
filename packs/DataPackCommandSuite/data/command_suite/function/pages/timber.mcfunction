tellraw @s {"text":""}
tellraw @s {"text":"========== Timber ==========","color":"green","bold":true}
tellraw @s {"text":"Apply a Timber Book to the axe in your main hand.","color":"gray"}
tellraw @s {"text":""}

tellraw @s [{"text":"Apply Timber: ","color":"white"},{"text":"/trigger timber_apply","color":"aqua","underlined":true,"click_event":{"action":"run_command","command":"/trigger timber_apply"},"hover_event":{"action":"show_text","value":"Apply Timber to held axe"}}]

tellraw @s {"text":""}
tellraw @s [{"text":"← Back to datapack list","color":"yellow","underlined":true,"click_event":{"action":"run_command","command":"/trigger dpcsuite"},"hover_event":{"action":"show_text","value":"Click to go back"}}]
tellraw @s {"text":"============================","color":"green"}
