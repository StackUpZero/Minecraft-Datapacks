execute if score cut_count ovm.config >= max_ores ovm.config run return fail
execute if block ~ ~ ~ air run return fail

scoreboard players add cut_count ovm.config 1
setblock ~ ~ ~ air destroy

function ore_veinminer:mine_vein
