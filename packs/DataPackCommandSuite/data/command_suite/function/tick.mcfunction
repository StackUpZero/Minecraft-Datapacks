scoreboard players enable @a dpcsuite
execute as @a[scores={dpcsuite=1..}] run function command_suite:menu
scoreboard players reset @a[scores={dpcsuite=1..}] dpcsuite
function #command_suite:tick_pages

# OreTracker DPSuite trigger
function command_suite:triggers/ore_tracker/tick


# BEGIN DPCS MANAGED TRIGGER TICKS
function command_suite:triggers/custom_day_cycle/tick
function command_suite:triggers/general/tick
function command_suite:triggers/welcome_pack/tick
function command_suite:triggers/ore_tracker/tick
# END DPCS MANAGED TRIGGER TICKS

# Timber DPSuite trigger
function command_suite:triggers/timber/tick



# RecipeTweaks DPSuite trigger
function command_suite:triggers/recipe_tweaks/tick

# WoodCutter DPSuite trigger
function command_suite:triggers/wood_cutter/tick

# OreVeinMiner DPSuite trigger
function command_suite:triggers/ore_veinminer/tick
