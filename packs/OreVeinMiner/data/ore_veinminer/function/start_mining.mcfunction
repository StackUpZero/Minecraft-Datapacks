$scoreboard players reset @s ovm.b.$(namespace).$(id)

execute unless predicate ore_veinminer:is_sneaking run return fail
execute if entity @s[scores={ovm.cooldown=1..}] run return fail

function ore_veinminer:check_held_pickaxe
execute unless score @s ovm.ok matches 1.. run return fail

scoreboard players set cut_count ovm.config 0
data modify storage ore_veinminer:data temp1.current set from storage ore_veinminer:data temp0.current

function ore_veinminer:find_mining_location

scoreboard players operation @s ovm.cooldown = default_cooldown ovm.cooldown
