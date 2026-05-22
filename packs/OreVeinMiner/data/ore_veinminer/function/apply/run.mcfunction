tellraw @s {"text":"OreVeinMiner apply started.","color":"dark_aqua"}

scoreboard players set @s ovm.apply 0
scoreboard players set @s ovm.held 0

function ore_veinminer:apply/check_held_pickaxe

execute unless score @s ovm.held matches 1.. run tellraw @s {"text":"Hold a pickaxe in your main hand first.","color":"red"}
execute unless score @s ovm.held matches 1.. run return fail

# Book detection priority:
# 1 = crafted VeinMiner Book
# 2 = real VeinMiner enchanted book
# 3 = fallback any enchanted book

execute store result score #crafted ovm.apply run clear @s minecraft:enchanted_book[minecraft:custom_data~{ovm_book:1}] 0
execute if score #crafted ovm.apply matches 1.. run scoreboard players set @s ovm.apply 1

execute unless score @s ovm.apply matches 1.. store result score #real ovm.apply run clear @s minecraft:enchanted_book[minecraft:stored_enchantments~[{enchantments:"ore_veinminer:veinminer"}]] 0
execute unless score @s ovm.apply matches 1.. if score #real ovm.apply matches 1.. run scoreboard players set @s ovm.apply 2

execute unless score @s ovm.apply matches 1.. store result score #anybook ovm.apply run clear @s minecraft:enchanted_book 0
execute unless score @s ovm.apply matches 1.. if score #anybook ovm.apply matches 1.. run scoreboard players set @s ovm.apply 3

execute unless score @s ovm.apply matches 1.. run tellraw @s {"text":"You need a VeinMiner Book or enchanted book in your inventory.","color":"red"}
execute unless score @s ovm.apply matches 1.. run return fail

execute if items entity @s weapon.mainhand *[minecraft:enchantments~[{enchantments:"ore_veinminer:veinminer"}]] run tellraw @s {"text":"That pickaxe already has the real VeinMiner enchantment.","color":"yellow"}
execute if items entity @s weapon.mainhand *[minecraft:enchantments~[{enchantments:"ore_veinminer:veinminer"}]] run return fail

execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{ore_veinminer:1b}}}}] run tellraw @s {"text":"That pickaxe already has stable VeinMiner.","color":"yellow"}
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{ore_veinminer:1b}}}}] run return fail

# Consume the matching book type.
execute if score @s ovm.apply matches 1 run clear @s minecraft:enchanted_book[minecraft:custom_data~{ovm_book:1}] 1
execute if score @s ovm.apply matches 2 run clear @s minecraft:enchanted_book[minecraft:stored_enchantments~[{enchantments:"ore_veinminer:veinminer"}]] 1
execute if score @s ovm.apply matches 3 run clear @s minecraft:enchanted_book 1

execute if score @s ovm.apply matches 1 run tellraw @s {"text":"Crafted VeinMiner Book consumed.","color":"gray"}
execute if score @s ovm.apply matches 2 run tellraw @s {"text":"Real VeinMiner enchanted book consumed.","color":"gray"}
execute if score @s ovm.apply matches 3 run tellraw @s {"text":"Generic enchanted book consumed as fallback.","color":"yellow"}

tellraw @s {"text":"Trying real enchant...","color":"gray"}
enchant @s ore_veinminer:veinminer 1

execute if items entity @s weapon.mainhand *[minecraft:enchantments~[{enchantments:"ore_veinminer:veinminer"}]] run tellraw @s {"text":"Real VeinMiner enchantment applied.","color":"green"}
execute if items entity @s weapon.mainhand *[minecraft:enchantments~[{enchantments:"ore_veinminer:veinminer"}]] run return 1

tellraw @s {"text":"Real enchant did not apply. Applying stable fallback marker...","color":"yellow"}
item modify entity @s weapon.mainhand ore_veinminer:apply_fake_veinminer
tellraw @s {"text":"Stable VeinMiner applied. Sneak-mine an ore to test.","color":"green"}
