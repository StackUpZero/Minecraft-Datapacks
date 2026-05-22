scoreboard objectives add dpcsuite trigger
function #command_suite:load_pages

# OreTracker DPSuite trigger
function command_suite:triggers/ore_tracker/load


# BEGIN DPCS MANAGED TRIGGER LOADS
function command_suite:triggers/custom_day_cycle/load
function command_suite:triggers/general/load
function command_suite:triggers/welcome_pack/load
function command_suite:triggers/ore_tracker/load
# END DPCS MANAGED TRIGGER LOADS

# Timber DPSuite trigger
function command_suite:triggers/timber/load



# RecipeTweaks DPSuite trigger
function command_suite:triggers/recipe_tweaks/load

# WoodCutter DPSuite trigger
function command_suite:triggers/wood_cutter/load

# OreVeinMiner DPSuite trigger
function command_suite:triggers/ore_veinminer/load
