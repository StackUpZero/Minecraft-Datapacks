execute if score cut_count timber.config >= max_logs timber.config run return fail
execute if block ~ ~ ~ air run return fail

scoreboard players add cut_count timber.config 1
setblock ~ ~ ~ air destroy

function timber:mine_tree
