data remove storage timber:data blocks
data modify storage timber:data blocks.axe set value []

function timber:add_block {namespace:"minecraft",id:"oak_log",category:"axe"}
function timber:add_block {namespace:"minecraft",id:"spruce_log",category:"axe"}
function timber:add_block {namespace:"minecraft",id:"birch_log",category:"axe"}
function timber:add_block {namespace:"minecraft",id:"jungle_log",category:"axe"}
function timber:add_block {namespace:"minecraft",id:"acacia_log",category:"axe"}
function timber:add_block {namespace:"minecraft",id:"dark_oak_log",category:"axe"}
function timber:add_block {namespace:"minecraft",id:"mangrove_log",category:"axe"}
function timber:add_block {namespace:"minecraft",id:"cherry_log",category:"axe"}
function timber:add_block {namespace:"minecraft",id:"pale_oak_log",category:"axe"}

function timber:add_block {namespace:"minecraft",id:"crimson_stem",category:"axe"}
function timber:add_block {namespace:"minecraft",id:"warped_stem",category:"axe"}

function timber:add_block {namespace:"minecraft",id:"stripped_oak_log",category:"axe"}
function timber:add_block {namespace:"minecraft",id:"stripped_spruce_log",category:"axe"}
function timber:add_block {namespace:"minecraft",id:"stripped_birch_log",category:"axe"}
function timber:add_block {namespace:"minecraft",id:"stripped_jungle_log",category:"axe"}
function timber:add_block {namespace:"minecraft",id:"stripped_acacia_log",category:"axe"}
function timber:add_block {namespace:"minecraft",id:"stripped_dark_oak_log",category:"axe"}
function timber:add_block {namespace:"minecraft",id:"stripped_mangrove_log",category:"axe"}
function timber:add_block {namespace:"minecraft",id:"stripped_cherry_log",category:"axe"}
function timber:add_block {namespace:"minecraft",id:"stripped_pale_oak_log",category:"axe"}

function timber:add_block {namespace:"minecraft",id:"oak_wood",category:"axe"}
function timber:add_block {namespace:"minecraft",id:"spruce_wood",category:"axe"}
function timber:add_block {namespace:"minecraft",id:"birch_wood",category:"axe"}
function timber:add_block {namespace:"minecraft",id:"jungle_wood",category:"axe"}
function timber:add_block {namespace:"minecraft",id:"acacia_wood",category:"axe"}
function timber:add_block {namespace:"minecraft",id:"dark_oak_wood",category:"axe"}
function timber:add_block {namespace:"minecraft",id:"mangrove_wood",category:"axe"}
function timber:add_block {namespace:"minecraft",id:"cherry_wood",category:"axe"}
function timber:add_block {namespace:"minecraft",id:"pale_oak_wood",category:"axe"}

function timber:add_block {namespace:"minecraft",id:"crimson_hyphae",category:"axe"}
function timber:add_block {namespace:"minecraft",id:"warped_hyphae",category:"axe"}

scoreboard objectives add timber.b.minecraft.oak_log minecraft.mined:minecraft.oak_log
scoreboard objectives add timber.b.minecraft.spruce_log minecraft.mined:minecraft.spruce_log
scoreboard objectives add timber.b.minecraft.birch_log minecraft.mined:minecraft.birch_log
scoreboard objectives add timber.b.minecraft.jungle_log minecraft.mined:minecraft.jungle_log
scoreboard objectives add timber.b.minecraft.acacia_log minecraft.mined:minecraft.acacia_log
scoreboard objectives add timber.b.minecraft.dark_oak_log minecraft.mined:minecraft.dark_oak_log
scoreboard objectives add timber.b.minecraft.mangrove_log minecraft.mined:minecraft.mangrove_log
scoreboard objectives add timber.b.minecraft.cherry_log minecraft.mined:minecraft.cherry_log
scoreboard objectives add timber.b.minecraft.pale_oak_log minecraft.mined:minecraft.pale_oak_log

scoreboard objectives add timber.b.minecraft.crimson_stem minecraft.mined:minecraft.crimson_stem
scoreboard objectives add timber.b.minecraft.warped_stem minecraft.mined:minecraft.warped_stem

scoreboard objectives add timber.b.minecraft.stripped_oak_log minecraft.mined:minecraft.stripped_oak_log
scoreboard objectives add timber.b.minecraft.stripped_spruce_log minecraft.mined:minecraft.stripped_spruce_log
scoreboard objectives add timber.b.minecraft.stripped_birch_log minecraft.mined:minecraft.stripped_birch_log
scoreboard objectives add timber.b.minecraft.stripped_jungle_log minecraft.mined:minecraft.stripped_jungle_log
scoreboard objectives add timber.b.minecraft.stripped_acacia_log minecraft.mined:minecraft.stripped_acacia_log
scoreboard objectives add timber.b.minecraft.stripped_dark_oak_log minecraft.mined:minecraft.stripped_dark_oak_log
scoreboard objectives add timber.b.minecraft.stripped_mangrove_log minecraft.mined:minecraft.stripped_mangrove_log
scoreboard objectives add timber.b.minecraft.stripped_cherry_log minecraft.mined:minecraft.stripped_cherry_log
scoreboard objectives add timber.b.minecraft.stripped_pale_oak_log minecraft.mined:minecraft.stripped_pale_oak_log

scoreboard objectives add timber.b.minecraft.oak_wood minecraft.mined:minecraft.oak_wood
scoreboard objectives add timber.b.minecraft.spruce_wood minecraft.mined:minecraft.spruce_wood
scoreboard objectives add timber.b.minecraft.birch_wood minecraft.mined:minecraft.birch_wood
scoreboard objectives add timber.b.minecraft.jungle_wood minecraft.mined:minecraft.jungle_wood
scoreboard objectives add timber.b.minecraft.acacia_wood minecraft.mined:minecraft.acacia_wood
scoreboard objectives add timber.b.minecraft.dark_oak_wood minecraft.mined:minecraft.dark_oak_wood
scoreboard objectives add timber.b.minecraft.mangrove_wood minecraft.mined:minecraft.mangrove_wood
scoreboard objectives add timber.b.minecraft.cherry_wood minecraft.mined:minecraft.cherry_wood
scoreboard objectives add timber.b.minecraft.pale_oak_wood minecraft.mined:minecraft.pale_oak_wood

scoreboard objectives add timber.b.minecraft.crimson_hyphae minecraft.mined:minecraft.crimson_hyphae
scoreboard objectives add timber.b.minecraft.warped_hyphae minecraft.mined:minecraft.warped_hyphae

scoreboard players set default_cooldown timber.cooldown 10
scoreboard players set max_logs timber.config 64
