data remove storage ore_veinminer:data blocks
data modify storage ore_veinminer:data blocks.pickaxe set value []

function ore_veinminer:add_block {namespace:"minecraft",id:"coal_ore",category:"pickaxe"}
function ore_veinminer:add_block {namespace:"minecraft",id:"deepslate_coal_ore",category:"pickaxe"}

function ore_veinminer:add_block {namespace:"minecraft",id:"copper_ore",category:"pickaxe"}
function ore_veinminer:add_block {namespace:"minecraft",id:"deepslate_copper_ore",category:"pickaxe"}

function ore_veinminer:add_block {namespace:"minecraft",id:"iron_ore",category:"pickaxe"}
function ore_veinminer:add_block {namespace:"minecraft",id:"deepslate_iron_ore",category:"pickaxe"}

function ore_veinminer:add_block {namespace:"minecraft",id:"gold_ore",category:"pickaxe"}
function ore_veinminer:add_block {namespace:"minecraft",id:"deepslate_gold_ore",category:"pickaxe"}

function ore_veinminer:add_block {namespace:"minecraft",id:"redstone_ore",category:"pickaxe"}
function ore_veinminer:add_block {namespace:"minecraft",id:"deepslate_redstone_ore",category:"pickaxe"}

function ore_veinminer:add_block {namespace:"minecraft",id:"lapis_ore",category:"pickaxe"}
function ore_veinminer:add_block {namespace:"minecraft",id:"deepslate_lapis_ore",category:"pickaxe"}

function ore_veinminer:add_block {namespace:"minecraft",id:"diamond_ore",category:"pickaxe"}
function ore_veinminer:add_block {namespace:"minecraft",id:"deepslate_diamond_ore",category:"pickaxe"}

function ore_veinminer:add_block {namespace:"minecraft",id:"emerald_ore",category:"pickaxe"}
function ore_veinminer:add_block {namespace:"minecraft",id:"deepslate_emerald_ore",category:"pickaxe"}

function ore_veinminer:add_block {namespace:"minecraft",id:"nether_gold_ore",category:"pickaxe"}
function ore_veinminer:add_block {namespace:"minecraft",id:"nether_quartz_ore",category:"pickaxe"}
function ore_veinminer:add_block {namespace:"minecraft",id:"ancient_debris",category:"pickaxe"}

scoreboard objectives add ovm.b.minecraft.coal_ore minecraft.mined:minecraft.coal_ore
scoreboard objectives add ovm.b.minecraft.deepslate_coal_ore minecraft.mined:minecraft.deepslate_coal_ore

scoreboard objectives add ovm.b.minecraft.copper_ore minecraft.mined:minecraft.copper_ore
scoreboard objectives add ovm.b.minecraft.deepslate_copper_ore minecraft.mined:minecraft.deepslate_copper_ore

scoreboard objectives add ovm.b.minecraft.iron_ore minecraft.mined:minecraft.iron_ore
scoreboard objectives add ovm.b.minecraft.deepslate_iron_ore minecraft.mined:minecraft.deepslate_iron_ore

scoreboard objectives add ovm.b.minecraft.gold_ore minecraft.mined:minecraft.gold_ore
scoreboard objectives add ovm.b.minecraft.deepslate_gold_ore minecraft.mined:minecraft.deepslate_gold_ore

scoreboard objectives add ovm.b.minecraft.redstone_ore minecraft.mined:minecraft.redstone_ore
scoreboard objectives add ovm.b.minecraft.deepslate_redstone_ore minecraft.mined:minecraft.deepslate_redstone_ore

scoreboard objectives add ovm.b.minecraft.lapis_ore minecraft.mined:minecraft.lapis_ore
scoreboard objectives add ovm.b.minecraft.deepslate_lapis_ore minecraft.mined:minecraft.deepslate_lapis_ore

scoreboard objectives add ovm.b.minecraft.diamond_ore minecraft.mined:minecraft.diamond_ore
scoreboard objectives add ovm.b.minecraft.deepslate_diamond_ore minecraft.mined:minecraft.deepslate_diamond_ore

scoreboard objectives add ovm.b.minecraft.emerald_ore minecraft.mined:minecraft.emerald_ore
scoreboard objectives add ovm.b.minecraft.deepslate_emerald_ore minecraft.mined:minecraft.deepslate_emerald_ore

scoreboard objectives add ovm.b.minecraft.nether_gold_ore minecraft.mined:minecraft.nether_gold_ore
scoreboard objectives add ovm.b.minecraft.nether_quartz_ore minecraft.mined:minecraft.nether_quartz_ore
scoreboard objectives add ovm.b.minecraft.ancient_debris minecraft.mined:minecraft.ancient_debris

scoreboard players set default_cooldown ovm.cooldown 10
scoreboard players set max_ores ovm.config 64
