scoreboard players set @s ovm.ok 0

execute if items entity @s weapon.mainhand *[minecraft:enchantments~[{enchantments:"ore_veinminer:veinminer"}]] run scoreboard players set @s ovm.ok 1
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{ore_veinminer:1b}}}}] run scoreboard players set @s ovm.ok 1
