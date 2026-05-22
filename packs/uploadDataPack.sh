#!/usr/bin/env bash
set -euo pipefail

# Patch OreVeinMiner:
# - Add crafting recipe: 8 diamond pickaxes around 1 book = VeinMiner Book
# - Add /trigger ovm_apply
# - Applies real ore_veinminer:veinminer enchant when possible
# - Falls back to stable custom_data marker if needed
#
# Run from:
# ~/Projects/MInecraft Datapacks/packs

PACK_NAME="OreVeinMiner"
PACK_NS="ore_veinminer"
DPCSUITE="DataPackCommandSuite"

echo "Adding OreVeinMiner crafting recipe and apply command..."

if [[ ! -d "$PACK_NAME/data/$PACK_NS/function" ]]; then
  echo "ERROR: Missing $PACK_NAME/data/$PACK_NS/function"
  echo "Run from: ~/Projects/MInecraft Datapacks/packs"
  exit 1
fi

mkdir -p \
  "$PACK_NAME/data/$PACK_NS/recipe" \
  "$PACK_NAME/data/$PACK_NS/function/apply" \
  "$PACK_NAME/data/$PACK_NS/item_modifier" \
  "$PACK_NAME/data/$PACK_NS/function/menu"

# -----------------------------
# Recipe:
# 8 diamond pickaxes around 1 book = VeinMiner Book
# -----------------------------

cat > "$PACK_NAME/data/$PACK_NS/recipe/veinminer_book.json" <<'EOF'
{
  "type": "minecraft:crafting_shaped",
  "category": "equipment",
  "pattern": [
    "PPP",
    "PBP",
    "PPP"
  ],
  "key": {
    "P": "minecraft:diamond_pickaxe",
    "B": "minecraft:book"
  },
  "result": {
    "id": "minecraft:enchanted_book",
    "count": 1,
    "components": {
      "minecraft:custom_data": {
        "ovm_book": 1
      },
      "minecraft:item_name": {
        "text": "VeinMiner Book",
        "color": "dark_aqua",
        "italic": false
      },
      "minecraft:lore": [
        {
          "text": "VeinMiner I",
          "color": "gray",
          "italic": false
        },
        {
          "text": "Used to apply VeinMiner to a pickaxe.",
          "color": "dark_aqua",
          "italic": false
        }
      ],
      "minecraft:enchantment_glint_override": true
    }
  }
}
EOF

# -----------------------------
# Objectives
# -----------------------------

LOAD_FILE="$PACK_NAME/data/$PACK_NS/function/load.mcfunction"

if ! grep -q "scoreboard objectives add ovm_apply trigger" "$LOAD_FILE"; then
  cat >> "$LOAD_FILE" <<'EOF'
scoreboard objectives add ovm_apply trigger
EOF
fi

if ! grep -q "scoreboard objectives add ovm.apply dummy" "$LOAD_FILE"; then
  cat >> "$LOAD_FILE" <<'EOF'
scoreboard objectives add ovm.apply dummy
EOF
fi

# -----------------------------
# Tick trigger
# -----------------------------

TICK_FILE="$PACK_NAME/data/$PACK_NS/function/tick.mcfunction"

if ! grep -q "scoreboard players enable @a ovm_apply" "$TICK_FILE"; then
  sed -i '/scoreboard players enable @a ovm/a scoreboard players enable @a ovm_apply' "$TICK_FILE"
fi

if ! grep -q "function ore_veinminer:apply/run" "$TICK_FILE"; then
  cat >> "$TICK_FILE" <<'EOF'

execute as @a if score @s ovm_apply matches 1.. run function ore_veinminer:apply/run
scoreboard players set @a[scores={ovm_apply=1..}] ovm_apply 0
EOF
fi

# -----------------------------
# Fallback fake marker
# -----------------------------

cat > "$PACK_NAME/data/$PACK_NS/item_modifier/apply_fake_veinminer.json" <<'EOF'
[
  {
    "function": "minecraft:set_components",
    "components": {
      "minecraft:custom_data": {
        "ore_veinminer": 1
      },
      "minecraft:lore": [
        {
          "text": "VeinMiner I",
          "color": "gray",
          "italic": false
        },
        {
          "text": "Sneak while mining ores to mine connected ore veins.",
          "color": "dark_aqua",
          "italic": false
        }
      ],
      "minecraft:enchantment_glint_override": true
    }
  }
]
EOF

# -----------------------------
# Apply command
# -----------------------------

cat > "$PACK_NAME/data/$PACK_NS/function/apply/run.mcfunction" <<'EOF'
scoreboard players set @s ovm.apply 0

execute store result score @s ovm.apply run clear @s minecraft:enchanted_book[minecraft:custom_data={ovm_book:1}] 0

execute unless score @s ovm.apply matches 1.. run tellraw @s {"text":"You need a VeinMiner Book in your inventory.","color":"red"}
execute unless score @s ovm.apply matches 1.. run return fail

execute unless items entity @s weapon.mainhand #minecraft:pickaxes run tellraw @s {"text":"Hold a pickaxe in your main hand first.","color":"red"}
execute unless items entity @s weapon.mainhand #minecraft:pickaxes run return fail

execute if items entity @s weapon.mainhand *[minecraft:enchantments~[{enchantments:"ore_veinminer:veinminer"}]] run tellraw @s {"text":"That pickaxe already has the real VeinMiner enchantment.","color":"yellow"}
execute if items entity @s weapon.mainhand *[minecraft:enchantments~[{enchantments:"ore_veinminer:veinminer"}]] run return fail

execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{ore_veinminer:1b}}}}] run tellraw @s {"text":"That pickaxe already has VeinMiner.","color":"yellow"}
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{ore_veinminer:1b}}}}] run return fail

clear @s minecraft:enchanted_book[minecraft:custom_data={ovm_book:1}] 1

enchant @s ore_veinminer:veinminer 1

execute if items entity @s weapon.mainhand *[minecraft:enchantments~[{enchantments:"ore_veinminer:veinminer"}]] run tellraw @s {"text":"Real VeinMiner enchantment applied to your pickaxe.","color":"green"}
execute if items entity @s weapon.mainhand *[minecraft:enchantments~[{enchantments:"ore_veinminer:veinminer"}]] run return 1

item modify entity @s weapon.mainhand ore_veinminer:apply_fake_veinminer
tellraw @s {"text":"Real enchant failed, so stable VeinMiner mode was applied instead.","color":"yellow"}
EOF

cat > "$PACK_NAME/data/$PACK_NS/function/apply/debug.mcfunction" <<'EOF'
tellraw @s {"text":""}
tellraw @s {"text":"========== OreVeinMiner Apply Debug ==========","color":"dark_aqua","bold":true}

execute store result score @s ovm.apply run clear @s minecraft:enchanted_book[minecraft:custom_data={ovm_book:1}] 0
tellraw @s [{"text":"VeinMiner Books found: ","color":"gray"},{"score":{"name":"@s","objective":"ovm.apply"}}]

execute if items entity @s weapon.mainhand #minecraft:pickaxes run tellraw @s {"text":"Held item: pickaxe detected","color":"green"}
execute unless items entity @s weapon.mainhand #minecraft:pickaxes run tellraw @s {"text":"Held item: NOT a pickaxe","color":"red"}

execute if items entity @s weapon.mainhand *[minecraft:enchantments~[{enchantments:"ore_veinminer:veinminer"}]] run tellraw @s {"text":"Real VeinMiner enchantment: present","color":"green"}
execute unless items entity @s weapon.mainhand *[minecraft:enchantments~[{enchantments:"ore_veinminer:veinminer"}]] run tellraw @s {"text":"Real VeinMiner enchantment: not present","color":"yellow"}

execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{ore_veinminer:1b}}}}] run tellraw @s {"text":"Stable VeinMiner marker: present","color":"green"}
execute unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{ore_veinminer:1b}}}}] run tellraw @s {"text":"Stable VeinMiner marker: not present","color":"yellow"}

tellraw @s {"text":"==============================================","color":"dark_aqua"}
EOF

# -----------------------------
# OreVeinMiner menu
# -----------------------------

cat > "$PACK_NAME/data/$PACK_NS/function/menu/main.mcfunction" <<'EOF'
tellraw @s {"text":""}
tellraw @s {"text":"========== OreVeinMiner ==========","color":"dark_aqua","bold":true}
tellraw @s {"text":"Sneak while mining an ore to mine connected ores of the same type.","color":"gray"}
tellraw @s {"text":""}

tellraw @s {"text":"Crafting:","color":"gold"}
tellraw @s {"text":"8 diamond pickaxes around 1 book = VeinMiner Book","color":"gray"}
tellraw @s {"text":""}

tellraw @s {"text":"Apply system:","color":"gold"}
tellraw @s {"text":"Hold a pickaxe, keep a VeinMiner Book in your inventory, then run:","color":"gray"}
tellraw @s [{"text":"/trigger ovm_apply","color":"aqua","underlined":true,"click_event":{"action":"run_command","command":"/trigger ovm_apply"},"hover_event":{"action":"show_text","value":"Apply VeinMiner to held pickaxe"}}]
tellraw @s [{"text":"Debug apply system: ","color":"white"},{"text":"/function ore_veinminer:apply/debug","color":"yellow","underlined":true,"click_event":{"action":"suggest_command","command":"/function ore_veinminer:apply/debug"},"hover_event":{"action":"show_text","value":"Paste debug command"}}]
tellraw @s {"text":""}

tellraw @s {"text":"Admin/test commands:","color":"gold"}
tellraw @s [{"text":"Give plain diamond pickaxe: ","color":"white"},{"text":"/function ore_veinminer:give/plain_diamond_pickaxe","color":"aqua","underlined":true,"click_event":{"action":"suggest_command","command":"/function ore_veinminer:give/plain_diamond_pickaxe"},"hover_event":{"action":"show_text","value":"Paste command"}}]
tellraw @s [{"text":"Give legacy fake pickaxe: ","color":"white"},{"text":"/function ore_veinminer:give/fake_diamond_pickaxe","color":"yellow","underlined":true,"click_event":{"action":"suggest_command","command":"/function ore_veinminer:give/fake_diamond_pickaxe"},"hover_event":{"action":"show_text","value":"Paste command"}}]
tellraw @s {"text":""}

tellraw @s {"text":"Real enchant command: /enchant @s ore_veinminer:veinminer 1","color":"yellow"}
tellraw @s {"text":"Safety: max 64 connected ores per use.","color":"gray"}
tellraw @s {"text":"================================","color":"dark_aqua"}
EOF

# -----------------------------
# DPCS page cleanup
# -----------------------------

cat > "$DPCSUITE/data/command_suite/function/pages/ore_veinminer.mcfunction" <<'EOF'
tellraw @s {"text":""}
tellraw @s {"text":"========== OreVeinMiner ==========","color":"dark_aqua","bold":true}
tellraw @s {"text":"Apply VeinMiner to the pickaxe in your main hand.","color":"gray"}
tellraw @s {"text":""}

tellraw @s {"text":"Crafting:","color":"gold"}
tellraw @s {"text":"8 diamond pickaxes around 1 book = VeinMiner Book","color":"gray"}
tellraw @s {"text":""}

tellraw @s [{"text":"Apply VeinMiner: ","color":"white"},{"text":"/trigger ovm_apply","color":"aqua","underlined":true,"click_event":{"action":"run_command","command":"/trigger ovm_apply"},"hover_event":{"action":"show_text","value":"Apply VeinMiner to held pickaxe"}}]
tellraw @s [{"text":"Debug apply system: ","color":"white"},{"text":"/function ore_veinminer:apply/debug","color":"yellow","underlined":true,"click_event":{"action":"suggest_command","command":"/function ore_veinminer:apply/debug"},"hover_event":{"action":"show_text","value":"Paste debug command"}}]

tellraw @s {"text":""}
tellraw @s [{"text":"← Back to datapack list","color":"yellow","underlined":true,"click_event":{"action":"run_command","command":"/trigger dpcsuite"},"hover_event":{"action":"show_text","value":"Click to go back"}}]
tellraw @s {"text":"================================","color":"dark_aqua"}
EOF

echo "Done."
echo ""
echo "Copy/reinstall these folders into your world datapacks:"
echo "  OreVeinMiner"
echo "  DataPackCommandSuite"
echo ""
echo "Then run:"
echo "  /reload"
echo ""
echo "Test:"
echo "  1. Craft VeinMiner Book: 8 diamond pickaxes around 1 book"
echo "  2. Hold any pickaxe"
echo "  3. Run: /trigger ovm_apply"
echo "  4. Sneak-mine an ore vein"
