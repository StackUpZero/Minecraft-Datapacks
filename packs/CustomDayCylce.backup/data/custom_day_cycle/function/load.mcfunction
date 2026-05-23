scoreboard objectives add cdc dummy
scoreboard objectives add customdaycycle trigger
scoreboard objectives add cdc_start trigger
scoreboard objectives add cdc_stop trigger
scoreboard objectives add cdc_vanilla trigger
scoreboard objectives add cdc_config trigger
scoreboard objectives add cdc_day trigger
scoreboard objectives add cdc_night trigger

scoreboard players set #enabled cdc 0
scoreboard players set #phase cdc 0
scoreboard players set #phase_progress cdc 0
scoreboard players set #acc cdc 0
scoreboard players set #day_min cdc 45
scoreboard players set #night_min cdc 15
scoreboard players set #denom cdc 54000
scoreboard players set #to_add cdc 0
scoreboard players set #tmp cdc 0
scoreboard players set #const_1200 cdc 1200
scoreboard players set #const_12000 cdc 12000

# Load message intentionally suppressed.
# Use /trigger customdaycycle to open the menu.
