scoreboard players enable @a timber
scoreboard players enable @a timber_apply

execute as @a if score @s timber matches 1.. run function timber:menu/main
scoreboard players set @a[scores={timber=1..}] timber 0

function timber:check_axe

execute as @a[scores={timber.cooldown=1..}] run scoreboard players remove @s timber.cooldown 1

execute as @a if score @s timber_apply matches 1.. run function timber:apply/run
scoreboard players set @a[scores={timber_apply=1..}] timber_apply 0
