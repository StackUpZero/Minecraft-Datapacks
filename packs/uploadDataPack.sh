#!/usr/bin/env bash
set -euo pipefail

# Patch:
# 1. Suppress DataPackCommandSuite loaded message.
# 2. Update WelcomePack join message to include a short DPCS control-center note
#    and a clickable link to launch /trigger dpcsuite.
#
# Run from:
# ~/Projects/MInecraft Datapacks/packs

DPCSUITE="DataPackCommandSuite"
WELCOME="WelcomePack"

echo "Patching DPSuite load message and WelcomePack message..."

# -----------------------------
# Suppress Command Suite loaded message
# -----------------------------

DPCS_LOAD="$DPCSUITE/data/command_suite/function/load.mcfunction"

if [[ -f "$DPCS_LOAD" ]]; then
  # Remove the tellraw line that announces Command Suite on /reload.
  sed -i '/Command Suite loaded/d' "$DPCS_LOAD"
  echo "Suppressed DataPackCommandSuite loaded message."
else
  echo "WARNING: Could not find $DPCS_LOAD"
fi

# -----------------------------
# Update WelcomePack welcome message
# -----------------------------

WELCOME_FILE="$WELCOME/data/welcome_pack/function/welcome.mcfunction"

if [[ ! -f "$WELCOME_FILE" ]]; then
  echo "ERROR: Could not find $WELCOME_FILE"
  echo "Check your WelcomePack folder name/path."
  exit 1
fi

cat > "$WELCOME_FILE" <<'EOF'
tellraw @s {"text":""}
tellraw @s {"text":"Welcome to Red_Line_Server.","color":"red","bold":true}
tellraw @s {"text":"Please read the rules and have fun.","color":"white"}
tellraw @s {"text":""}
tellraw @s [{"text":"Click Here for Rules","color":"aqua","underlined":true,"click_event":{"action":"run_command","command":"/trigger rules"},"hover_event":{"action":"show_text","value":"View the server rules"}}]
tellraw @s {"text":""}
tellraw @s {"text":"DPCS is the datapack control center for server commands.","color":"gray"}
tellraw @s [{"text":"Open DPCS","color":"yellow","underlined":true,"click_event":{"action":"run_command","command":"/trigger dpcsuite"},"hover_event":{"action":"show_text","value":"Open the datapack command suite"}}]
tellraw @s {"text":""}
EOF

echo "Updated WelcomePack welcome message."

echo "Done."
echo ""
echo "Now copy/reinstall updated folders into your world datapacks folder if needed:"
echo "  $DPCSUITE"
echo "  $WELCOME"
echo ""
echo "Then run in Minecraft:"
echo "  /reload"
