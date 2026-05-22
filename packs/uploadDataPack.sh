#!/usr/bin/env bash
set -euo pipefail

# Clean DPCS permissions/layout:
# - Main DPCS becomes normal-player safe
# - Removes CustomDayCycle + General from public DPCS menu
# - Disables public trigger pages for CustomDayCycle + General
# - Adds operator/admin page accessible by:
#     /function command_suite:pages/admin
# - Simplifies Timber/OreVeinMiner pages to apply commands only
#
# Run from:
# ~/Projects/MInecraft Datapacks/packs

DPCSUITE="DataPackCommandSuite"

echo "Splitting DPCS into normal and admin command pages..."

if [[ ! -d "$DPCSUITE/data/command_suite" ]]; then
  echo "ERROR: Missing $DPCSUITE/data/command_suite"
  echo "Run from: ~/Projects/MInecraft Datapacks/packs"
  exit 1
fi

mkdir -p \
  "$DPCSUITE/data/command_suite/function/pages" \
  "$DPCSUITE/data/command_suite/function/entries" \
  "$DPCSUITE/data/command_suite/tags/function"

# -----------------------------
# Remove admin-ish pages from public DPCS menu + trigger tags
# -----------------------------

python - <<'PY'
import json
from pathlib import Path

remove_values = {
    "command_suite:entries/custom_day_cycle",
    "command_suite:entries/general",

    "command_suite:triggers/custom_day_cycle/load",
    "command_suite:triggers/custom_day_cycle/tick",

    "command_suite:triggers/general/load",
    "command_suite:triggers/general/tick",
}

files = [
    Path("DataPackCommandSuite/data/command_suite/tags/function/menu_entries.json"),
    Path("DataPackCommandSuite/data/command_suite/tags/function/load_pages.json"),
    Path("DataPackCommandSuite/data/command_suite/tags/function/tick_pages.json"),
]

for path in files:
    if not path.exists():
        continue

    data = json.loads(path.read_text())
    data["values"] = [v for v in data.get("values", []) if v not in remove_values]
    path.write_text(json.dumps(data, indent=2) + "\n")
PY

# Remove direct trigger calls from DPCS load/tick if present.
for file in \
  "$DPCSUITE/data/command_suite/function/load.mcfunction" \
  "$DPCSUITE/data/command_suite/function/tick.mcfunction"
do
  if [[ -f "$file" ]]; then
    sed -i '/command_suite:triggers\/custom_day_cycle\/load/d' "$file"
    sed -i '/command_suite:triggers\/custom_day_cycle\/tick/d' "$file"
    sed -i '/command_suite:triggers\/general\/load/d' "$file"
    sed -i '/command_suite:triggers\/general\/tick/d' "$file"

    sed -i '/CustomDayCycle DPSuite trigger/d' "$file"
    sed -i '/General DPSuite trigger/d' "$file"
  fi
done

# -----------------------------
# Public Timber page: apply only
# -----------------------------

cat > "$DPCSUITE/data/command_suite/function/pages/timber.mcfunction" <<'EOF'
tellraw @s {"text":""}
tellraw @s {"text":"========== Timber ==========","color":"green","bold":true}
tellraw @s {"text":"Apply Timber to the axe in your main hand.","color":"gray"}
tellraw @s {"text":""}

tellraw @s {"text":"Requires: Timber Book in your inventory.","color":"gray"}
tellraw @s [{"text":"Apply Timber: ","color":"white"},{"text":"/trigger timber_apply","color":"aqua","underlined":true,"click_event":{"action":"run_command","command":"/trigger timber_apply"},"hover_event":{"action":"show_text","value":"Apply Timber to held axe"}}]

tellraw @s {"text":""}
tellraw @s [{"text":"← Back to datapack list","color":"yellow","underlined":true,"click_event":{"action":"run_command","command":"/trigger dpcsuite"},"hover_event":{"action":"show_text","value":"Click to go back"}}]
tellraw @s {"text":"============================","color":"green"}
EOF

cat > "$DPCSUITE/data/command_suite/function/entries/timber.mcfunction" <<'EOF'
tellraw @s [{"text":"• ","color":"dark_gray"},{"text":"Timber","color":"aqua","underlined":true,"click_event":{"action":"run_command","command":"/trigger dpcs_tim"},"hover_event":{"action":"show_text","value":"Open Timber apply command"}},{"text":" - apply Timber to held axe","color":"gray"}]
EOF

# -----------------------------
# Public OreVeinMiner page: apply only
# -----------------------------

cat > "$DPCSUITE/data/command_suite/function/pages/ore_veinminer.mcfunction" <<'EOF'
tellraw @s {"text":""}
tellraw @s {"text":"========== OreVeinMiner ==========","color":"dark_aqua","bold":true}
tellraw @s {"text":"Apply VeinMiner to the pickaxe in your main hand.","color":"gray"}
tellraw @s {"text":""}

tellraw @s {"text":"Requires: VeinMiner Book in your inventory.","color":"gray"}
tellraw @s [{"text":"Apply VeinMiner: ","color":"white"},{"text":"/trigger ovm_apply","color":"aqua","underlined":true,"click_event":{"action":"run_command","command":"/trigger ovm_apply"},"hover_event":{"action":"show_text","value":"Apply VeinMiner to held pickaxe"}}]

tellraw @s {"text":""}
tellraw @s [{"text":"← Back to datapack list","color":"yellow","underlined":true,"click_event":{"action":"run_command","command":"/trigger dpcsuite"},"hover_event":{"action":"show_text","value":"Click to go back"}}]
tellraw @s {"text":"================================","color":"dark_aqua"}
EOF

cat > "$DPCSUITE/data/command_suite/function/entries/ore_veinminer.mcfunction" <<'EOF'
tellraw @s [{"text":"• ","color":"dark_gray"},{"text":"OreVeinMiner","color":"aqua","underlined":true,"click_event":{"action":"run_command","command":"/trigger dpcs_ovm"},"hover_event":{"action":"show_text","value":"Open OreVeinMiner apply command"}},{"text":" - apply VeinMiner to held pickaxe","color":"gray"}]
EOF

# -----------------------------
# Admin page
# Operator-only in practice because it is opened with /function.
# Non-ops should not be able to run /function on a normal server.
# -----------------------------

cat > "$DPCSUITE/data/command_suite/function/pages/admin.mcfunction" <<'EOF'
tellraw @s {"text":""}
tellraw @s {"text":"========== DPCS ADMIN ==========","color":"red","bold":true}
tellraw @s {"text":"Operator/debug/cheaty commands. Open with /function command_suite:pages/admin","color":"gray"}
tellraw @s {"text":""}

tellraw @s {"text":"Core admin pages:","color":"gold"}
tellraw @s [{"text":"General / Server: ","color":"white"},{"text":"/function command_suite:pages/general","color":"aqua","underlined":true,"click_event":{"action":"run_command","command":"/function command_suite:pages/general"},"hover_event":{"action":"show_text","value":"Open server utility commands"}}]
tellraw @s [{"text":"CustomDayCycle: ","color":"white"},{"text":"/function command_suite:pages/custom_day_cycle","color":"aqua","underlined":true,"click_event":{"action":"run_command","command":"/function command_suite:pages/custom_day_cycle"},"hover_event":{"action":"show_text","value":"Open day cycle controls"}}]

tellraw @s {"text":""}
tellraw @s {"text":"Timber admin/debug:","color":"gold"}
tellraw @s [{"text":"Debug Timber: ","color":"white"},{"text":"/function timber:debug","color":"yellow","underlined":true,"click_event":{"action":"suggest_command","command":"/function timber:debug"},"hover_event":{"action":"show_text","value":"Paste command"}}]
tellraw @s [{"text":"Give fake Timber axe: ","color":"white"},{"text":"/function timber:give/fake_diamond_axe","color":"yellow","underlined":true,"click_event":{"action":"suggest_command","command":"/function timber:give/fake_diamond_axe"},"hover_event":{"action":"show_text","value":"Paste command"}}]
tellraw @s [{"text":"Give plain Timber test axe: ","color":"white"},{"text":"/function timber:give/plain_diamond_axe","color":"yellow","underlined":true,"click_event":{"action":"suggest_command","command":"/function timber:give/plain_diamond_axe"},"hover_event":{"action":"show_text","value":"Paste command"}}]
tellraw @s [{"text":"Apply real Timber enchant manually: ","color":"white"},{"text":"/enchant @s timber:timber 1","color":"yellow","underlined":true,"click_event":{"action":"suggest_command","command":"/enchant @s timber:timber 1"},"hover_event":{"action":"show_text","value":"Paste command"}}]

tellraw @s {"text":""}
tellraw @s {"text":"OreVeinMiner admin/debug:","color":"gold"}
tellraw @s [{"text":"Debug OreVeinMiner: ","color":"white"},{"text":"/function ore_veinminer:debug","color":"yellow","underlined":true,"click_event":{"action":"suggest_command","command":"/function ore_veinminer:debug"},"hover_event":{"action":"show_text","value":"Paste command"}}]
tellraw @s [{"text":"Debug OVM apply: ","color":"white"},{"text":"/function ore_veinminer:apply/debug","color":"yellow","underlined":true,"click_event":{"action":"suggest_command","command":"/function ore_veinminer:apply/debug"},"hover_event":{"action":"show_text","value":"Paste command"}}]
tellraw @s [{"text":"Give fake VeinMiner pickaxe: ","color":"white"},{"text":"/function ore_veinminer:give/fake_diamond_pickaxe","color":"yellow","underlined":true,"click_event":{"action":"suggest_command","command":"/function ore_veinminer:give/fake_diamond_pickaxe"},"hover_event":{"action":"show_text","value":"Paste command"}}]
tellraw @s [{"text":"Give plain VeinMiner test pickaxe: ","color":"white"},{"text":"/function ore_veinminer:give/plain_diamond_pickaxe","color":"yellow","underlined":true,"click_event":{"action":"suggest_command","command":"/function ore_veinminer:give/plain_diamond_pickaxe"},"hover_event":{"action":"show_text","value":"Paste command"}}]
tellraw @s [{"text":"Apply real VeinMiner enchant manually: ","color":"white"},{"text":"/enchant @s ore_veinminer:veinminer 1","color":"yellow","underlined":true,"click_event":{"action":"suggest_command","command":"/enchant @s ore_veinminer:veinminer 1"},"hover_event":{"action":"show_text","value":"Paste command"}}]

tellraw @s {"text":""}
tellraw @s {"text":"================================","color":"red"}
EOF

echo "Done."
echo ""
echo "Copy/reinstall DataPackCommandSuite into your world datapacks folder."
echo "Then run:"
echo "  /reload"
echo ""
echo "Normal players:"
echo "  /trigger dpcsuite"
echo ""
echo "Operators/admin:"
echo "  /function command_suite:pages/admin"
