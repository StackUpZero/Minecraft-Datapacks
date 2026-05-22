scoreboard players set @s timber.ok 0

execute if items entity @s weapon.mainhand *[minecraft:enchantments~[{enchantments:"timber:timber"}]] run scoreboard players set @s timber.ok 1
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{timber:1b}}}}] run scoreboard players set @s timber.ok 1
