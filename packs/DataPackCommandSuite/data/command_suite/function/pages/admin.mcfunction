tellraw @s {"text":""}
tellraw @s {"text":"========== DPCS ADMIN ==========","color":"red","bold":true}
tellraw @s {"text":"Operator/debug/cheaty commands. Open with /function command_suite:pages/admin","color":"gray"}
tellraw @s {"text":""}

tellraw @s {"text":"Core admin pages:","color":"gold"}
tellraw @s [{"text":"General / Server: ","color":"white"},{"text":"/function command_suite:pages/general","color":"aqua","underlined":true,"click_event":{"action":"run_command","command":"/function command_suite:pages/general"},"hover_event":{"action":"show_text","value":"Open server utility commands"}}]
tellraw @s [{"text":"CustomDayCycle: ","color":"white"},{"text":"/function command_suite:pages/custom_day_cycle","color":"aqua","underlined":true,"click_event":{"action":"run_command","command":"/function command_suite:pages/custom_day_cycle"},"hover_event":{"action":"show_text","value":"Open day cycle controls"}}]

tellraw @s {"text":""}
tellraw @s {"text":"Timber admin/debug:","color":"gold"}
tellraw @s [{"text":"Debug Timber: ","color":"white"},{"text":"/function timber:debug","color":"yellow","underlined":true,"click_event":{"action":"suggest_command","command":"/function timber:debug"},"hover_event":{"action":"show_text","value":"Paste command"}}]
tellraw @s [{"text":"Give fake Timber axe: ","color":"white"},{"text":"/function timber:give/fake_diamond_axe","color":"yellow","underlined":true,"click_event":{"action":"suggest_command","command":"/function timber:give/fake_diamond_axe"},"hover_event":{"action":"show_text","value":"Paste command"}}]
tellraw @s [{"text":"Give plain Timber test axe: ","color":"white"},{"text":"/function timber:give/plain_diamond_axe","color":"yellow","underlined":true,"click_event":{"action":"suggest_command","command":"/function timber:give/plain_diamond_axe"},"hover_event":{"action":"show_text","value":"Paste command"}}]
tellraw @s [{"text":"Apply real Timber enchant manually: ","color":"white"},{"text":"/enchant @s timber:timber 1","color":"yellow","underlined":true,"click_event":{"action":"suggest_command","command":"/enchant @s timber:timber 1"},"hover_event":{"action":"show_text","value":"Paste command"}}]

tellraw @s {"text":""}
tellraw @s {"text":"OreVeinMiner admin/debug:","color":"gold"}
tellraw @s [{"text":"Debug OreVeinMiner: ","color":"white"},{"text":"/function ore_veinminer:debug","color":"yellow","underlined":true,"click_event":{"action":"suggest_command","command":"/function ore_veinminer:debug"},"hover_event":{"action":"show_text","value":"Paste command"}}]
tellraw @s [{"text":"Debug OVM apply: ","color":"white"},{"text":"/function ore_veinminer:apply/debug","color":"yellow","underlined":true,"click_event":{"action":"suggest_command","command":"/function ore_veinminer:apply/debug"},"hover_event":{"action":"show_text","value":"Paste command"}}]
tellraw @s [{"text":"Give fake VeinMiner pickaxe: ","color":"white"},{"text":"/function ore_veinminer:give/fake_diamond_pickaxe","color":"yellow","underlined":true,"click_event":{"action":"suggest_command","command":"/function ore_veinminer:give/fake_diamond_pickaxe"},"hover_event":{"action":"show_text","value":"Paste command"}}]
tellraw @s [{"text":"Give plain VeinMiner test pickaxe: ","color":"white"},{"text":"/function ore_veinminer:give/plain_diamond_pickaxe","color":"yellow","underlined":true,"click_event":{"action":"suggest_command","command":"/function ore_veinminer:give/plain_diamond_pickaxe"},"hover_event":{"action":"show_text","value":"Paste command"}}]
tellraw @s [{"text":"Apply real VeinMiner enchant manually: ","color":"white"},{"text":"/enchant @s ore_veinminer:veinminer 1","color":"yellow","underlined":true,"click_event":{"action":"suggest_command","command":"/enchant @s ore_veinminer:veinminer 1"},"hover_event":{"action":"show_text","value":"Paste command"}}]

tellraw @s {"text":""}
tellraw @s {"text":"================================","color":"red"}
