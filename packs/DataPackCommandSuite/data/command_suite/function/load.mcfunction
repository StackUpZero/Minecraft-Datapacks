scoreboard objectives add dpcsuite trigger
function #command_suite:load_pages

# OreTracker DPSuite trigger
function command_suite:triggers/ore_tracker/load

# DeepSlateOreDoubler DPSuite trigger
function command_suite:triggers/deepslate_ore_doubler/load

# BEGIN DPCS MANAGED TRIGGER LOADS
function command_suite:triggers/custom_day_cycle/load
function command_suite:triggers/general/load
function command_suite:triggers/welcome_pack/load
function command_suite:triggers/ore_tracker/load
function command_suite:triggers/deepslate_ore_doubler/load
# END DPCS MANAGED TRIGGER LOADS
