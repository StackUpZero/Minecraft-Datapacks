tag @s remove mobkills_viewer

scoreboard players set @s mobkills_state 0
scoreboard players set @s mobkills 0

scoreboard objectives setdisplay sidebar

tellraw @s {"text":"Mob kill sidebar disabled.","color":"red"}
