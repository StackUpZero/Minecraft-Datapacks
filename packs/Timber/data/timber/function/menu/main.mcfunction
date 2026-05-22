tellraw @s {"text":""}
tellraw @s {"text":"========== Timber ==========","color":"green","bold":true}
tellraw @s {"text":"Real custom enchantment for axes.","color":"gray"}
tellraw @s {"text":"Sneak while chopping a log with a Timber axe to chop connected logs.","color":"gray"}
tellraw @s {"text":""}

tellraw @s {"text":"Crafting:","color":"gold"}
tellraw @s {"text":"8 diamond axes around 1 book = Timber Book","color":"gray"}
tellraw @s {"text":""}

tellraw @s {"text":"Apply system:","color":"gold"}
tellraw @s {"text":"Hold an axe, keep a Timber Book in your inventory, then run:","color":"gray"}
tellraw @s [{"text":"/trigger timber_apply","color":"aqua","underlined":true,"click_event":{"action":"run_command","command":"/trigger timber_apply"},"hover_event":{"action":"show_text","value":"Apply Timber to held axe"}}]
tellraw @s [{"text":"Debug apply system: ","color":"white"},{"text":"/function timber:apply/debug","color":"yellow","underlined":true,"click_event":{"action":"suggest_command","command":"/function timber:apply/debug"},"hover_event":{"action":"show_text","value":"Paste debug command"}}]
tellraw @s {"text":""}

tellraw @s {"text":"Admin/test commands:","color":"gold"}
tellraw @s [{"text":"Give plain diamond axe: ","color":"white"},{"text":"/function timber:give/plain_diamond_axe","color":"aqua","underlined":true,"click_event":{"action":"suggest_command","command":"/function timber:give/plain_diamond_axe"},"hover_event":{"action":"show_text","value":"Paste command"}}]
tellraw @s [{"text":"Give legacy fake Timber axe: ","color":"white"},{"text":"/function timber:give/fake_diamond_axe","color":"yellow","underlined":true,"click_event":{"action":"suggest_command","command":"/function timber:give/fake_diamond_axe"},"hover_event":{"action":"show_text","value":"Paste command"}}]
tellraw @s {"text":""}

tellraw @s {"text":"Real enchant command: /enchant @s timber:timber 1","color":"yellow"}
tellraw @s {"text":"============================","color":"green"}
