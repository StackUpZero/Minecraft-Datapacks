$scoreboard players reset @s timber.b.$(namespace).$(id)

execute unless predicate timber:is_sneaking run return fail
execute if entity @s[scores={timber.cooldown=1..}] run return fail

function timber:check_held_timber
execute unless score @s timber.ok matches 1.. run return fail

scoreboard players set cut_count timber.config 0
data modify storage timber:data temp1.current set from storage timber:data temp0.current

function timber:find_mining_location

scoreboard players operation @s timber.cooldown = default_cooldown timber.cooldown
