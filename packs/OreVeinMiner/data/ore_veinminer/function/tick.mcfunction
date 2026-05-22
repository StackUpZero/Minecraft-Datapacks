scoreboard players enable @a ovm
scoreboard players enable @a ovm_apply

execute as @a if score @s ovm matches 1.. run function ore_veinminer:menu/main
scoreboard players set @a[scores={ovm=1..}] ovm 0

execute as @a if score @s ovm_apply matches 1.. run function ore_veinminer:apply/run
scoreboard players set @a[scores={ovm_apply=1..}] ovm_apply 0

function ore_veinminer:check_pickaxe

execute as @a[scores={ovm.cooldown=1..}] run scoreboard players remove @s ovm.cooldown 1
