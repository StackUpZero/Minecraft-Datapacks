scoreboard players set @s timber.apply 0

# Detect crafted Timber Book.
execute if items entity @s container.* minecraft:enchanted_book[minecraft:custom_data~{timber_book:1}] run scoreboard players set @s timber.apply 1

# Detect real Timber enchanted book, if obtained from creative/commands/loot.
execute if items entity @s container.* minecraft:enchanted_book[minecraft:stored_enchantments~[{enchantments:"timber:timber"}]] run scoreboard players set @s timber.apply 2

execute unless score @s timber.apply matches 1.. run tellraw @s {"text":"You need a Timber Book in your inventory.","color":"red"}
execute unless score @s timber.apply matches 1.. run return fail

execute unless items entity @s weapon.mainhand #minecraft:axes run tellraw @s {"text":"Hold an axe in your main hand first.","color":"red"}
execute unless items entity @s weapon.mainhand #minecraft:axes run return fail

execute if items entity @s weapon.mainhand *[minecraft:enchantments~[{enchantments:"timber:timber"}]] run tellraw @s {"text":"That axe already has the real Timber enchantment.","color":"yellow"}
execute if items entity @s weapon.mainhand *[minecraft:enchantments~[{enchantments:"timber:timber"}]] run return fail

execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{timber:1b}}}}] run tellraw @s {"text":"That axe already has Timber.","color":"yellow"}
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{timber:1b}}}}] run return fail

# Consume crafted Timber Book first if present.
execute if score @s timber.apply matches 1 run clear @s minecraft:enchanted_book[minecraft:custom_data~{timber_book:1}] 1

# Consume real Timber enchanted book if that was detected instead.
execute if score @s timber.apply matches 2 run clear @s minecraft:enchanted_book[minecraft:stored_enchantments~[{enchantments:"timber:timber"}]] 1

# Try real enchant.
enchant @s timber:timber 1

# Confirm real enchant applied.
execute if items entity @s weapon.mainhand *[minecraft:enchantments~[{enchantments:"timber:timber"}]] run tellraw @s {"text":"Real Timber enchantment applied to your axe.","color":"green"}
execute if items entity @s weapon.mainhand *[minecraft:enchantments~[{enchantments:"timber:timber"}]] run return 1

# Fallback: stable fake Timber marker.
item modify entity @s weapon.mainhand timber:apply_fake_timber
tellraw @s {"text":"Real enchant failed, so stable Timber mode was applied instead.","color":"yellow"}
