execute as @a run scoreboard players set @s travel_total_cm 0

execute as @a run scoreboard players operation @s travel_total_cm += @s walk_cm
execute as @a run scoreboard players operation @s travel_total_cm += @s sprint_cm
execute as @a run scoreboard players operation @s travel_total_cm += @s crouch_cm
execute as @a run scoreboard players operation @s travel_total_cm += @s swim_cm
execute as @a run scoreboard players operation @s travel_total_cm += @s climb_cm
execute as @a run scoreboard players operation @s travel_total_cm += @s fly_cm
execute as @a run scoreboard players operation @s travel_total_cm += @s fall_cm
execute as @a run scoreboard players operation @s travel_total_cm += @s boat_cm
execute as @a run scoreboard players operation @s travel_total_cm += @s minecart_cm
execute as @a run scoreboard players operation @s travel_total_cm += @s horse_cm
execute as @a run scoreboard players operation @s travel_total_cm += @s pig_cm
execute as @a run scoreboard players operation @s travel_total_cm += @s strider_cm
execute as @a run scoreboard players operation @s travel_total_cm += @s aviate_cm

execute as @a run scoreboard players operation @s travel_blocks = @s travel_total_cm
execute as @a run scoreboard players operation @s travel_blocks /= #100 travel_calc
