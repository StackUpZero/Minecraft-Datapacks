data modify storage ore_veinminer:data temp0.current set from storage ore_veinminer:data temp0.list[-1]
data remove storage ore_veinminer:data temp0.list[-1]

function ore_veinminer:check_block with storage ore_veinminer:data temp0.current

execute store result score remaining_blocks ovm.config run data get storage ore_veinminer:data temp0.list
execute if score remaining_blocks ovm.config matches 1.. run function ore_veinminer:check_loop
