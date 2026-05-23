#!/usr/bin/env bash
set -euo pipefail

BASE_DIR="$HOME/Projects/Minecraft Datapacks/packs"
PACK_NAME="CustomDayCylce"
PACK_DIR="$BASE_DIR/$PACK_NAME"
NS="custom_day_cycle"

echo "Rebuilding $PACK_NAME from scratch..."

# Backup old broken pack
if [ -d "$PACK_DIR" ]; then
  BACKUP="$BASE_DIR/${PACK_NAME}_backup_$(date +%Y%m%d_%H%M%S)"
  mv "$PACK_DIR" "$BACKUP"
  echo "Old pack moved to:"
  echo "  $BACKUP"
fi

# Create folders
mkdir -p "$PACK_DIR/data/minecraft/tags/function"
mkdir -p "$PACK_DIR/data/$NS/function/triggers"
mkdir -p "$PACK_DIR/data/$NS/function/internal"

# pack.mcmeta
cat > "$PACK_DIR/pack.mcmeta" <<'EOF'
{
  "pack": {
    "pack_format": 81,
    "description": "Custom 90 Minute Day Cycle with Sleep Skip"
  }
}
EOF

# Tags
cat > "$PACK_DIR/data/minecraft/tags/function/load.json" <<EOF
{
  "values": [
    "$NS:load"
  ]
}
EOF

cat > "$PACK_DIR/data/minecraft/tags/function/tick.json" <<EOF
{
  "values": [
    "$NS:tick"
  ]
}
EOF

# Load
cat > "$PACK_DIR/data/$NS/function/load.mcfunction" <<'EOF'
# Custom Day Cycle - Load

# Main state
scoreboard objectives add cdc dummy

# Player commands
scoreboard objectives add cdc_start trigger
scoreboard objectives add cdc_stop trigger
scoreboard objectives add cdc_menu trigger
scoreboard objectives add cdc_set_day trigger
scoreboard objectives add cdc_set_night trigger
scoreboard objectives add cdc_vanilla trigger

# Sleep detection
scoreboard objectives add cdc_sleep minecraft.custom:minecraft.sleep_in_bed
scoreboard objectives add cdc_sleep_timer dummy

# Defaults
scoreboard players set #enabled cdc 1
scoreboard players set #phase cdc 0
scoreboard players set #phase_progress cdc 0
scoreboard players set #acc cdc 0
scoreboard players set #to_add cdc 0

# Config
# 90 minute full cycle:
# Day = 45 minutes = 54000 game ticks
# Night = 45 minutes = 54000 game ticks
scoreboard players set #day_length cdc 54000
scoreboard players set #night_length cdc 54000

tellraw @a [{"text":"[CustomDayCylce] ","color":"gold"},{"text":"Loaded. Use /trigger cdc_menu","color":"yellow"}]
EOF

# Tick
cat > "$PACK_DIR/data/$NS/function/tick.mcfunction" <<'EOF'
# Custom Day Cycle - Tick

# Enable triggers for all players
scoreboard players enable @a cdc_start
scoreboard players enable @a cdc_stop
scoreboard players enable @a cdc_menu
scoreboard players enable @a cdc_set_day
scoreboard players enable @a cdc_set_night
scoreboard players enable @a cdc_vanilla

# Trigger handlers
execute as @a[scores={cdc_menu=1..}] run function custom_day_cycle:menu
execute as @a[scores={cdc_start=1..}] run function custom_day_cycle:triggers/start
execute as @a[scores={cdc_stop=1..}] run function custom_day_cycle:triggers/stop
execute as @a[scores={cdc_set_day=1..}] run function custom_day_cycle:triggers/set_day
execute as @a[scores={cdc_set_night=1..}] run function custom_day_cycle:triggers/set_night
execute as @a[scores={cdc_vanilla=1..}] run function custom_day_cycle:triggers/vanilla

scoreboard players reset @a[scores={cdc_menu=1..}] cdc_menu
scoreboard players reset @a[scores={cdc_start=1..}] cdc_start
scoreboard players reset @a[scores={cdc_stop=1..}] cdc_stop
scoreboard players reset @a[scores={cdc_set_day=1..}] cdc_set_day
scoreboard players reset @a[scores={cdc_set_night=1..}] cdc_set_night
scoreboard players reset @a[scores={cdc_vanilla=1..}] cdc_vanilla

# Sleep skip support
execute as @a[scores={cdc_sleep=1..}] run scoreboard players set @s cdc_sleep_timer 1
scoreboard players reset @a cdc_sleep
scoreboard players add @a[scores={cdc_sleep_timer=1..}] cdc_sleep_timer 1
execute if entity @a[scores={cdc_sleep_timer=20..}] run function custom_day_cycle:internal/sleep_skip

# Run custom cycle if enabled
execute if score #enabled cdc matches 1 run function custom_day_cycle:internal/run
EOF

# Menu
cat > "$PACK_DIR/data/$NS/function/menu.mcfunction" <<'EOF'
tellraw @s ["",{"text":"\n=== Custom Day Cycle ===\n","color":"gold","bold":true},{"text":"Start custom cycle","color":"green","clickEvent":{"action":"run_command","value":"/trigger cdc_start"},"hoverEvent":{"action":"show_text","contents":"Click to start custom day cycle"}},{"text":"\n"},{"text":"Stop/freeze cycle","color":"red","clickEvent":{"action":"run_command","value":"/trigger cdc_stop"},"hoverEvent":{"action":"show_text","contents":"Click to stop custom day cycle"}},{"text":"\n"},{"text":"Return to vanilla time","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger cdc_vanilla"},"hoverEvent":{"action":"show_text","contents":"Click to return to vanilla daylight cycle"}},{"text":"\n"},{"text":"Set Day","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger cdc_set_day"}},{"text":" | "},{"text":"Set Night","color":"dark_purple","clickEvent":{"action":"run_command","value":"/trigger cdc_set_night"}},{"text":"\n"}]
EOF

# Start
cat > "$PACK_DIR/data/$NS/function/triggers/start.mcfunction" <<'EOF'
scoreboard players set #enabled cdc 1
gamerule doDaylightCycle false
tellraw @s [{"text":"[CustomDayCylce] ","color":"gold"},{"text":"Custom 90 minute cycle started.","color":"green"}]
EOF

# Stop
cat > "$PACK_DIR/data/$NS/function/triggers/stop.mcfunction" <<'EOF'
scoreboard players set #enabled cdc 0
gamerule doDaylightCycle false
tellraw @s [{"text":"[CustomDayCylce] ","color":"gold"},{"text":"Custom cycle stopped/frozen.","color":"red"}]
EOF

# Vanilla
cat > "$PACK_DIR/data/$NS/function/triggers/vanilla.mcfunction" <<'EOF'
scoreboard players set #enabled cdc 0
gamerule doDaylightCycle true
scoreboard players set #phase cdc 0
scoreboard players set #phase_progress cdc 0
scoreboard players set #acc cdc 0
scoreboard players set #to_add cdc 0
tellraw @s [{"text":"[CustomDayCylce] ","color":"gold"},{"text":"Returned to vanilla daylight cycle.","color":"aqua"}]
EOF

# Set day
cat > "$PACK_DIR/data/$NS/function/triggers/set_day.mcfunction" <<'EOF'
scoreboard players set #enabled cdc 1
gamerule doDaylightCycle false
scoreboard players set #phase cdc 0
scoreboard players set #phase_progress cdc 0
scoreboard players set #acc cdc 0
scoreboard players set #to_add cdc 0
time set day
tellraw @s [{"text":"[CustomDayCylce] ","color":"gold"},{"text":"Set to day.","color":"yellow"}]
EOF

# Set night
cat > "$PACK_DIR/data/$NS/function/triggers/set_night.mcfunction" <<'EOF'
scoreboard players set #enabled cdc 1
gamerule doDaylightCycle false
scoreboard players set #phase cdc 1
scoreboard players set #phase_progress cdc 0
scoreboard players set #acc cdc 0
scoreboard players set #to_add cdc 0
time set night
tellraw @s [{"text":"[CustomDayCylce] ","color":"gold"},{"text":"Set to night.","color":"dark_purple"}]
EOF

# Main cycle runner
cat > "$PACK_DIR/data/$NS/function/internal/run.mcfunction" <<'EOF'
# Freeze vanilla time system
gamerule doDaylightCycle false

# Add progress
scoreboard players add #phase_progress cdc 1

# Day phase
execute if score #phase cdc matches 0 run time set day
execute if score #phase cdc matches 0 run function custom_day_cycle:internal/day_math
execute if score #phase cdc matches 0 if score #phase_progress cdc >= #day_length cdc run function custom_day_cycle:internal/switch_to_night

# Night phase
execute if score #phase cdc matches 1 run time set night
execute if score #phase cdc matches 1 run function custom_day_cycle:internal/night_math
execute if score #phase cdc matches 1 if score #phase_progress cdc >= #night_length cdc run function custom_day_cycle:internal/switch_to_day
EOF

# Day math
cat > "$PACK_DIR/data/$NS/function/internal/day_math.mcfunction" <<'EOF'
# Map 0..54000 custom ticks to Minecraft day range 0..12000
# to_add = phase_progress * 12000 / day_length

scoreboard players operation #to_add cdc = #phase_progress cdc
scoreboard players set #mul cdc 12000
scoreboard players operation #to_add cdc *= #mul cdc
scoreboard players operation #to_add cdc /= #day_length cdc

execute store result score #dummy cdc run time set 0
execute store result score #dummy cdc run time add 0
time set 0
execute store result score #dummy cdc run time add 0
execute if score #to_add cdc matches 1.. run function custom_day_cycle:internal/add_time
EOF

# Night math
cat > "$PACK_DIR/data/$NS/function/internal/night_math.mcfunction" <<'EOF'
# Map 0..54000 custom ticks to Minecraft night range 13000..23000
# to_add = 13000 + phase_progress * 10000 / night_length

scoreboard players operation #to_add cdc = #phase_progress cdc
scoreboard players set #mul cdc 10000
scoreboard players operation #to_add cdc *= #mul cdc
scoreboard players operation #to_add cdc /= #night_length cdc
scoreboard players add #to_add cdc 13000

time set 0
execute if score #to_add cdc matches 1.. run function custom_day_cycle:internal/add_time
EOF

# Add time loop
cat > "$PACK_DIR/data/$NS/function/internal/add_time.mcfunction" <<'EOF'
# Adds #to_add ticks to the day time in chunks.
# This avoids needing macro commands.

execute if score #to_add cdc matches 1000.. run time add 1000
execute if score #to_add cdc matches 1000.. run scoreboard players remove #to_add cdc 1000
execute if score #to_add cdc matches 1000.. run function custom_day_cycle:internal/add_time

execute if score #to_add cdc matches 100..999 run time add 100
execute if score #to_add cdc matches 100..999 run scoreboard players remove #to_add cdc 100
execute if score #to_add cdc matches 100..999 run function custom_day_cycle:internal/add_time

execute if score #to_add cdc matches 10..99 run time add 10
execute if score #to_add cdc matches 10..99 run scoreboard players remove #to_add cdc 10
execute if score #to_add cdc matches 10..99 run function custom_day_cycle:internal/add_time

execute if score #to_add cdc matches 1..9 run time add 1
execute if score #to_add cdc matches 1..9 run scoreboard players remove #to_add cdc 1
execute if score #to_add cdc matches 1..9 run function custom_day_cycle:internal/add_time
EOF

# Switch to night
cat > "$PACK_DIR/data/$NS/function/internal/switch_to_night.mcfunction" <<'EOF'
scoreboard players set #phase cdc 1
scoreboard players set #phase_progress cdc 0
scoreboard players set #acc cdc 0
scoreboard players set #to_add cdc 0
time set night
EOF

# Switch to day
cat > "$PACK_DIR/data/$NS/function/internal/switch_to_day.mcfunction" <<'EOF'
scoreboard players set #phase cdc 0
scoreboard players set #phase_progress cdc 0
scoreboard players set #acc cdc 0
scoreboard players set #to_add cdc 0
time set day
EOF

# Sleep skip
cat > "$PACK_DIR/data/$NS/function/internal/sleep_skip.mcfunction" <<'EOF'
# Bed sleep skip for custom cycle

scoreboard players set #enabled cdc 1
gamerule doDaylightCycle false

scoreboard players set #phase cdc 0
scoreboard players set #phase_progress cdc 0
scoreboard players set #acc cdc 0
scoreboard players set #to_add cdc 0

scoreboard players reset @a cdc_sleep
scoreboard players reset @a cdc_sleep_timer

time set day
weather clear

tellraw @a [{"text":"[CustomDayCylce] ","color":"gold"},{"text":"Good morning.","color":"yellow"}]
EOF

# README
cat > "$PACK_DIR/README.txt" <<'EOF'
CustomDayCylce

Commands:
/trigger cdc_menu
/trigger cdc_start
/trigger cdc_stop
/trigger cdc_vanilla
/trigger cdc_set_day
/trigger cdc_set_night

Full cycle is 90 minutes:
- 45 minute day
- 45 minute night

Sleeping in a bed forces the custom cycle back to morning.
EOF

echo
echo "Done."
echo "Built:"
echo "  $PACK_DIR"
echo
echo "Next:"
echo "  1. Copy/keep this folder in your world's datapacks folder if needed."
echo "  2. In Minecraft run: /reload"
echo "  3. Then run: /trigger cdc_menu"
echo
