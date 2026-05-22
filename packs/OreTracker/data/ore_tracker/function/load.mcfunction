scoreboard objectives add oretracker trigger
scoreboard objectives add ore_toggle trigger
scoreboard objectives add ore_show trigger
scoreboard objectives add ore_hide trigger
scoreboard objectives add ore_refresh trigger
scoreboard objectives add ore_debug trigger

scoreboard objectives add ore_stats dummy "OreTracker"

scoreboard objectives add ot_coal minecraft.mined:minecraft.coal_ore
scoreboard objectives add ot_deepslate_coal minecraft.mined:minecraft.deepslate_coal_ore

scoreboard objectives add ot_copper minecraft.mined:minecraft.copper_ore
scoreboard objectives add ot_deepslate_copper minecraft.mined:minecraft.deepslate_copper_ore

scoreboard objectives add ot_iron minecraft.mined:minecraft.iron_ore
scoreboard objectives add ot_deepslate_iron minecraft.mined:minecraft.deepslate_iron_ore

scoreboard objectives add ot_gold minecraft.mined:minecraft.gold_ore
scoreboard objectives add ot_deepslate_gold minecraft.mined:minecraft.deepslate_gold_ore

scoreboard objectives add ot_redstone minecraft.mined:minecraft.redstone_ore
scoreboard objectives add ot_deepslate_redstone minecraft.mined:minecraft.deepslate_redstone_ore

scoreboard objectives add ot_lapis minecraft.mined:minecraft.lapis_ore
scoreboard objectives add ot_deepslate_lapis minecraft.mined:minecraft.deepslate_lapis_ore

scoreboard objectives add ot_diamond minecraft.mined:minecraft.diamond_ore
scoreboard objectives add ot_deepslate_diamond minecraft.mined:minecraft.deepslate_diamond_ore

scoreboard objectives add ot_emerald minecraft.mined:minecraft.emerald_ore
scoreboard objectives add ot_deepslate_emerald minecraft.mined:minecraft.deepslate_emerald_ore

scoreboard objectives add ot_nether_gold minecraft.mined:minecraft.nether_gold_ore
scoreboard objectives add ot_nether_quartz minecraft.mined:minecraft.nether_quartz_ore
scoreboard objectives add ot_ancient_debris minecraft.mined:minecraft.ancient_debris

scoreboard objectives add ot_state dummy
scoreboard players set #shown ot_state 0

scoreboard objectives add ore_test trigger
