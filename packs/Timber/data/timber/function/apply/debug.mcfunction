tellraw @s {"text":""}
tellraw @s {"text":"========== Timber Apply Debug ==========","color":"green","bold":true}

execute if items entity @s container.* minecraft:enchanted_book[minecraft:custom_data~{timber_book:1}] run tellraw @s {"text":"Crafted Timber Book: found","color":"green"}
execute unless items entity @s container.* minecraft:enchanted_book[minecraft:custom_data~{timber_book:1}] run tellraw @s {"text":"Crafted Timber Book: not found","color":"red"}

execute if items entity @s container.* minecraft:enchanted_book[minecraft:stored_enchantments~[{enchantments:"timber:timber"}]] run tellraw @s {"text":"Real Timber enchanted book: found","color":"green"}
execute unless items entity @s container.* minecraft:enchanted_book[minecraft:stored_enchantments~[{enchantments:"timber:timber"}]] run tellraw @s {"text":"Real Timber enchanted book: not found","color":"yellow"}

execute if items entity @s weapon.mainhand #minecraft:axes run tellraw @s {"text":"Held item: axe detected","color":"green"}
execute unless items entity @s weapon.mainhand #minecraft:axes run tellraw @s {"text":"Held item: NOT an axe","color":"red"}

execute if items entity @s weapon.mainhand *[minecraft:enchantments~[{enchantments:"timber:timber"}]] run tellraw @s {"text":"Held axe real Timber enchant: present","color":"green"}
execute unless items entity @s weapon.mainhand *[minecraft:enchantments~[{enchantments:"timber:timber"}]] run tellraw @s {"text":"Held axe real Timber enchant: not present","color":"yellow"}

execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{timber:1b}}}}] run tellraw @s {"text":"Held axe stable Timber marker: present","color":"green"}
execute unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{timber:1b}}}}] run tellraw @s {"text":"Held axe stable Timber marker: not present","color":"yellow"}

tellraw @s {"text":"========================================","color":"green"}
