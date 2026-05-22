tellraw @s {"text":""}
tellraw @s {"text":"========== OreVeinMiner Apply Debug ==========","color":"dark_aqua","bold":true}

execute store result score @s ovm.apply run clear @s minecraft:enchanted_book[minecraft:custom_data={ovm_book:1}] 0
tellraw @s [{"text":"VeinMiner Books found: ","color":"gray"},{"score":{"name":"@s","objective":"ovm.apply"}}]

execute if items entity @s weapon.mainhand #minecraft:pickaxes run tellraw @s {"text":"Held item: pickaxe detected","color":"green"}
execute unless items entity @s weapon.mainhand #minecraft:pickaxes run tellraw @s {"text":"Held item: NOT a pickaxe","color":"red"}

execute if items entity @s weapon.mainhand *[minecraft:enchantments~[{enchantments:"ore_veinminer:veinminer"}]] run tellraw @s {"text":"Real VeinMiner enchantment: present","color":"green"}
execute unless items entity @s weapon.mainhand *[minecraft:enchantments~[{enchantments:"ore_veinminer:veinminer"}]] run tellraw @s {"text":"Real VeinMiner enchantment: not present","color":"yellow"}

execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{ore_veinminer:1b}}}}] run tellraw @s {"text":"Stable VeinMiner marker: present","color":"green"}
execute unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{ore_veinminer:1b}}}}] run tellraw @s {"text":"Stable VeinMiner marker: not present","color":"yellow"}

tellraw @s {"text":"==============================================","color":"dark_aqua"}
