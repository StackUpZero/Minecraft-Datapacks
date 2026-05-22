tellraw @s {"text":""}
tellraw @s {"text":"========== OreVeinMiner ==========","color":"dark_aqua","bold":true}
tellraw @s {"text":"Sneak while mining an ore to mine connected ores of the same type.","color":"gray"}
tellraw @s {"text":""}

tellraw @s {"text":"Crafting:","color":"gold"}
tellraw @s {"text":"8 diamond pickaxes around 1 book = VeinMiner Book","color":"gray"}
tellraw @s {"text":""}

tellraw @s {"text":"Apply system:","color":"gold"}
tellraw @s {"text":"Hold a pickaxe, keep a VeinMiner Book in your inventory, then run:","color":"gray"}
tellraw @s [{"text":"/trigger ovm_apply","color":"aqua","underlined":true,"click_event":{"action":"run_command","command":"/trigger ovm_apply"},"hover_event":{"action":"show_text","value":"Apply VeinMiner to held pickaxe"}}]
tellraw @s [{"text":"Debug apply system: ","color":"white"},{"text":"/function ore_veinminer:apply/debug","color":"yellow","underlined":true,"click_event":{"action":"suggest_command","command":"/function ore_veinminer:apply/debug"},"hover_event":{"action":"show_text","value":"Paste debug command"}}]
tellraw @s {"text":""}

tellraw @s {"text":"Admin/test commands:","color":"gold"}
tellraw @s [{"text":"Give plain diamond pickaxe: ","color":"white"},{"text":"/function ore_veinminer:give/plain_diamond_pickaxe","color":"aqua","underlined":true,"click_event":{"action":"suggest_command","command":"/function ore_veinminer:give/plain_diamond_pickaxe"},"hover_event":{"action":"show_text","value":"Paste command"}}]
tellraw @s [{"text":"Give legacy fake pickaxe: ","color":"white"},{"text":"/function ore_veinminer:give/fake_diamond_pickaxe","color":"yellow","underlined":true,"click_event":{"action":"suggest_command","command":"/function ore_veinminer:give/fake_diamond_pickaxe"},"hover_event":{"action":"show_text","value":"Paste command"}}]
tellraw @s {"text":""}

tellraw @s {"text":"Real enchant command: /enchant @s ore_veinminer:veinminer 1","color":"yellow"}
tellraw @s {"text":"Safety: max 64 connected ores per use.","color":"gray"}
tellraw @s {"text":"================================","color":"dark_aqua"}
