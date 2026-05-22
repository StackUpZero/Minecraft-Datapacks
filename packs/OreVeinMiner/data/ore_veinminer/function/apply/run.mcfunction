scoreboard players set @s ovm.apply 0

execute store result score @s ovm.apply run clear @s minecraft:enchanted_book[minecraft:custom_data={ovm_book:1}] 0

execute unless score @s ovm.apply matches 1.. run tellraw @s {"text":"You need a VeinMiner Book in your inventory.","color":"red"}
execute unless score @s ovm.apply matches 1.. run return fail

execute unless items entity @s weapon.mainhand #minecraft:pickaxes run tellraw @s {"text":"Hold a pickaxe in your main hand first.","color":"red"}
execute unless items entity @s weapon.mainhand #minecraft:pickaxes run return fail

execute if items entity @s weapon.mainhand *[minecraft:enchantments~[{enchantments:"ore_veinminer:veinminer"}]] run tellraw @s {"text":"That pickaxe already has the real VeinMiner enchantment.","color":"yellow"}
execute if items entity @s weapon.mainhand *[minecraft:enchantments~[{enchantments:"ore_veinminer:veinminer"}]] run return fail

execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{ore_veinminer:1b}}}}] run tellraw @s {"text":"That pickaxe already has VeinMiner.","color":"yellow"}
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{ore_veinminer:1b}}}}] run return fail

clear @s minecraft:enchanted_book[minecraft:custom_data={ovm_book:1}] 1

enchant @s ore_veinminer:veinminer 1

execute if items entity @s weapon.mainhand *[minecraft:enchantments~[{enchantments:"ore_veinminer:veinminer"}]] run tellraw @s {"text":"Real VeinMiner enchantment applied to your pickaxe.","color":"green"}
execute if items entity @s weapon.mainhand *[minecraft:enchantments~[{enchantments:"ore_veinminer:veinminer"}]] run return 1

item modify entity @s weapon.mainhand ore_veinminer:apply_fake_veinminer
tellraw @s {"text":"Real enchant failed, so stable VeinMiner mode was applied instead.","color":"yellow"}
