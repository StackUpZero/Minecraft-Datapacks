data modify storage timber:data temp0.current set from storage timber:data temp0.list[-1]
data remove storage timber:data temp0.list[-1]

function timber:check_block with storage timber:data temp0.current

execute store result score remaining_blocks timber.config run data get storage timber:data temp0.list
execute if score remaining_blocks timber.config matches 1.. run function timber:check_loop
