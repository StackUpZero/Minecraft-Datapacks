scoreboard objectives add ovm trigger
scoreboard objectives add ovm.config dummy
scoreboard objectives add ovm.cooldown dummy
scoreboard objectives add ovm.ok dummy

execute unless score initialized ovm.config matches 1.. run function ore_veinminer:reset_config
scoreboard players set initialized ovm.config 1
scoreboard objectives add ovm_apply trigger
scoreboard objectives add ovm.apply dummy
