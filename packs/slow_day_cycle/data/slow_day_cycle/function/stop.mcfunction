scoreboard players set #running slowday_state 0
scoreboard players set #acc slowday 0

gamerule advance_time true

tellraw @a {"text":"Slow Day Cycle disabled. Vanilla daylight restored.","color":"red"}
