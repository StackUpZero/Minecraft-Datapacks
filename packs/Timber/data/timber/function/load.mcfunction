scoreboard objectives add timber trigger
scoreboard objectives add timber.config dummy
scoreboard objectives add timber.cooldown dummy
scoreboard objectives add timber.ok dummy

execute unless score initialized timber.config matches 1.. run function timber:reset_config
scoreboard players set initialized timber.config 1
scoreboard objectives add timber_apply trigger
scoreboard objectives add timber.apply dummy
