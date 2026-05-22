scoreboard players set @s cdc_config 0
tellraw @s {"text":""}
tellraw @s {"text":"======= CustomDayCylce Config =======" ,"color":"gold","bold":true}
tellraw @s [{"text":"Status: ","color":"yellow"},{"score":{"name":"#enabled","objective":"cdc"}},{"text":"  ","color":"gray"},{"text":"0=off/frozen, 1=custom running","color":"dark_gray"}]
tellraw @s [{"text":"Phase: ","color":"yellow"},{"score":{"name":"#phase","objective":"cdc"}},{"text":"  ","color":"gray"},{"text":"0=day, 1=night","color":"dark_gray"}]
tellraw @s [{"text":"Day cycle time: ","color":"white"},{"score":{"name":"#day_min","objective":"cdc"}},{"text":" real minutes","color":"gray"}]
tellraw @s [{"text":"Night cycle time: ","color":"white"},{"score":{"name":"#night_min","objective":"cdc"}},{"text":" real minutes","color":"gray"}]
tellraw @s {"text":""}
tellraw @s [{"text":"Set Day Cycle time","color":"aqua","underlined":true,"click_event":{"action":"suggest_command","command":"/trigger cdc_day set "},"hover_event":{"action":"show_text","value":"Click, type real minutes, then press Enter"}},{"text":"  ← click then enter minutes","color":"gray"}]
tellraw @s [{"text":"Set Night Cycle time","color":"aqua","underlined":true,"click_event":{"action":"suggest_command","command":"/trigger cdc_night set "},"hover_event":{"action":"show_text","value":"Click, type real minutes, then press Enter"}},{"text":"  ← click then enter minutes","color":"gray"}]
tellraw @s {"text":""}
tellraw @s [{"text":"← Back to CustomDayCylce menu","color":"yellow","underlined":true,"click_event":{"action":"run_command","command":"/trigger customdaycycle"},"hover_event":{"action":"show_text","value":"Back to menu"}}]
tellraw @s {"text":"=====================================" ,"color":"gold"}
