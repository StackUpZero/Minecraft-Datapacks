scoreboard objectives add travel_blocks dummy "Blocks Travelled"

scoreboard objectives add travel_total_cm dummy
scoreboard objectives add travel_calc dummy

scoreboard objectives add walk_cm minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add sprint_cm minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add crouch_cm minecraft.custom:minecraft.crouch_one_cm
scoreboard objectives add swim_cm minecraft.custom:minecraft.swim_one_cm
scoreboard objectives add climb_cm minecraft.custom:minecraft.climb_one_cm
scoreboard objectives add fly_cm minecraft.custom:minecraft.fly_one_cm
scoreboard objectives add fall_cm minecraft.custom:minecraft.fall_one_cm
scoreboard objectives add boat_cm minecraft.custom:minecraft.boat_one_cm
scoreboard objectives add minecart_cm minecraft.custom:minecraft.minecart_one_cm
scoreboard objectives add horse_cm minecraft.custom:minecraft.horse_one_cm
scoreboard objectives add pig_cm minecraft.custom:minecraft.pig_one_cm
scoreboard objectives add strider_cm minecraft.custom:minecraft.strider_one_cm
scoreboard objectives add aviate_cm minecraft.custom:minecraft.aviate_one_cm

scoreboard players set #100 travel_calc 100

scoreboard objectives setdisplay sidebar travel_blocks

tellraw @a {"text":"Travel Counter loaded.","color":"green"}
