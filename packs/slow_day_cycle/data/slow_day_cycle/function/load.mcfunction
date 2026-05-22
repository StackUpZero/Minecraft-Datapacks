scoreboard objectives add slowday dummy
scoreboard objectives add slowday_state dummy

scoreboard players set #acc slowday 0
scoreboard players set #running slowday_state 1

gamerule advance_time false

tellraw @a {"text":"Slow Day Cycle loaded. 90-minute cycle enabled.","color":"green"}
