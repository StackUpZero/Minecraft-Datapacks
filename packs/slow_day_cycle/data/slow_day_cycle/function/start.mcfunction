scoreboard players set #running slowday_state 1
scoreboard players set #acc slowday 0

gamerule advance_time false

tellraw @a {"text":"Slow Day Cycle enabled. Full cycle: 90 minutes.","color":"green"}
