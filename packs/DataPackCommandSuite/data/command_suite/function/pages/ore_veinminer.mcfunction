tellraw @s {"text":""}
tellraw @s {"text":"========== OreVeinMiner ==========","color":"dark_aqua","bold":true}
tellraw @s {"text":"Apply VeinMiner to the pickaxe in your main hand.","color":"gray"}
tellraw @s {"text":""}

tellraw @s {"text":"Crafting:","color":"gold"}
tellraw @s {"text":"8 diamond pickaxes around 1 book = VeinMiner Book","color":"gray"}
tellraw @s {"text":""}

tellraw @s [{"text":"Apply VeinMiner: ","color":"white"},{"text":"/trigger ovm_apply","color":"aqua","underlined":true,"click_event":{"action":"run_command","command":"/trigger ovm_apply"},"hover_event":{"action":"show_text","value":"Apply VeinMiner to held pickaxe"}}]
tellraw @s [{"text":"Debug apply system: ","color":"white"},{"text":"/function ore_veinminer:apply/debug","color":"yellow","underlined":true,"click_event":{"action":"suggest_command","command":"/function ore_veinminer:apply/debug"},"hover_event":{"action":"show_text","value":"Paste debug command"}}]

tellraw @s {"text":""}
tellraw @s [{"text":"← Back to datapack list","color":"yellow","underlined":true,"click_event":{"action":"run_command","command":"/trigger dpcsuite"},"hover_event":{"action":"show_text","value":"Click to go back"}}]
tellraw @s {"text":"================================","color":"dark_aqua"}
