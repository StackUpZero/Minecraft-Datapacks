tellraw @s {"text":""}
tellraw @s {"text":"========== OreVeinMiner Apply Debug ==========","color":"dark_aqua","bold":true}

scoreboard players set @s ovm.held 0
function ore_veinminer:apply/check_held_pickaxe

execute if score @s ovm.held matches 1.. run tellraw @s {"text":"Held item: pickaxe detected","color":"green"}
execute unless score @s ovm.held matches 1.. run tellraw @s {"text":"Held item: NOT a pickaxe","color":"red"}

execute store result score #crafted ovm.apply run clear @s minecraft:enchanted_book[minecraft:custom_data~{ovm_book:1}] 0
tellraw @s [{"text":"Crafted VeinMiner Books found: ","color":"gray"},{"score":{"name":"#crafted","objective":"ovm.apply"}}]

execute store result score #real ovm.apply run clear @s minecraft:enchanted_book[minecraft:stored_enchantments~[{enchantments:"ore_veinminer:veinminer"}]] 0
tellraw @s [{"text":"Real VeinMiner Books found: ","color":"gray"},{"score":{"name":"#real","objective":"ovm.apply"}}]

execute store result score #anybook ovm.apply run clear @s minecraft:enchanted_book 0
tellraw @s [{"text":"Any enchanted books found: ","color":"gray"},{"score":{"name":"#anybook","objective":"ovm.apply"}}]

execute if items entity @s weapon.mainhand *[minecraft:enchantments~[{enchantments:"ore_veinminer:veinminer"}]] run tellraw @s {"text":"Real VeinMiner enchantment: present","color":"green"}
execute unless items entity @s weapon.mainhand *[minecraft:enchantments~[{enchantments:"ore_veinminer:veinminer"}]] run tellraw @s {"text":"Real VeinMiner enchantment: not present","color":"yellow"}

execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{ore_veinminer:1b}}}}] run tellraw @s {"text":"Stable VeinMiner marker: present","color":"green"}
execute unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{ore_veinminer:1b}}}}] run tellraw @s {"text":"Stable VeinMiner marker: not present","color":"yellow"}

tellraw @s {"text":"==============================================","color":"dark_aqua"}
