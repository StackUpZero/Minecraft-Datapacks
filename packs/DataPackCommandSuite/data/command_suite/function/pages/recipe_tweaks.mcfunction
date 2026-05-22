tellraw @s {"text":""}
tellraw @s {"text":"========== RecipeTweaks ==========","color":"gold","bold":true}
tellraw @s {"text":"Small custom recipe changes.","color":"gray"}
tellraw @s {"text":""}

tellraw @s {"text":"Recipes:","color":"gold"}
tellraw @s {"text":"- 1 wool -> 3 string","color":"gray"}
tellraw @s {"text":"- 1 rotten flesh -> furnace -> 1 leather","color":"gray"}
tellraw @s {"text":"- 8 logs around empty centre -> 4 chests","color":"gray"}
tellraw @s {"text":"- 6 logs in side columns -> 4 barrels","color":"gray"}
tellraw @s {"text":"- Command Block: redstone blocks + droppers + blaze rod","color":"gray"}
tellraw @s {"text":"- Debug Stick: stick top-right, diamond centre, stick bottom-left","color":"gray"}

tellraw @s {"text":""}
tellraw @s {"text":"Note: command blocks still require command blocks enabled on the server.","color":"yellow"}

tellraw @s {"text":""}
tellraw @s [{"text":"← Back to datapack list","color":"yellow","underlined":true,"click_event":{"action":"run_command","command":"/trigger dpcsuite"},"hover_event":{"action":"show_text","value":"Click to go back"}}]
tellraw @s {"text":"=================================","color":"gold"}
