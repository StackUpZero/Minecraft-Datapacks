tag @a remove mobkills_viewer
tag @s add mobkills_viewer

scoreboard players set @s mobkills_state 1
scoreboard players set @s mobkills 0

scoreboard objectives setdisplay sidebar mobkills_display

tellraw @s {"text":"Mob kill sidebar enabled.","color":"green"}
