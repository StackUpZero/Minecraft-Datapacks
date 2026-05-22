DATAPACK COMMAND SUITE
======================

Use in-game:
  /trigger dpcsuite

Removed:
  /trigger dpcommands

WHAT THIS VERSION DOES
----------------------
/trigger dpcsuite opens a short datapack index.
Click a datapack name and that datapack's commands open on their own page.
This prevents the command list getting massive as you add more datapacks.

IMPORTANT LIMITATION
--------------------
Minecraft datapacks cannot automatically read every installed datapack and generate a custom clickable help page for each one.
This suite shows every datapack that you REGISTER in the suite.

For real Minecraft's own list, use:
  /datapack list enabled

ADDING A NEW DATAPACK PAGE
--------------------------
Example new pack name:
  my_new_pack

Use a short trigger objective name, preferably 16 chars or less:
  dpcs_new

1. Create the command page:
   data/command_suite/function/pages/my_new_pack.mcfunction

Example page:

tellraw @s {"text":""}
tellraw @s {"text":"========== MY NEW PACK ==========","color":"yellow","bold":true}
tellraw @s [{"text":"Do thing: ","color":"white"},{"text":"/function my_new_pack:do_thing","color":"aqua","underlined":true,"click_event":{"action":"suggest_command","command":"/function my_new_pack:do_thing"},"hover_event":{"action":"show_text","value":"Click to paste this command into chat"}}]
tellraw @s {"text":""}
tellraw @s [{"text":"← Back to datapack list","color":"gold","underlined":true,"click_event":{"action":"run_command","command":"/trigger dpcsuite"},"hover_event":{"action":"show_text","value":"Click to go back"}}]

2. Create the index entry:
   data/command_suite/function/entries/my_new_pack.mcfunction

Example entry:

tellraw @s [{"text":"  • ","color":"gray"},{"text":"My New Pack","color":"aqua","underlined":true,"click_event":{"action":"run_command","command":"/trigger dpcs_new"},"hover_event":{"action":"show_text","value":"Click to open My New Pack commands"}},{"text":" - short description","color":"gray"}]

3. Create the trigger load file:
   data/command_suite/function/triggers/my_new_pack/load.mcfunction

Put this inside:

scoreboard objectives add dpcs_new trigger

4. Create the trigger tick file:
   data/command_suite/function/triggers/my_new_pack/tick.mcfunction

Put this inside:

scoreboard players enable @a dpcs_new
execute as @a[scores={dpcs_new=1..}] run function command_suite:pages/my_new_pack
scoreboard players reset @a[scores={dpcs_new=1..}] dpcs_new

5. Register the entry in:
   data/command_suite/tags/function/menu_entries.json

Add:
  "command_suite:entries/my_new_pack"

6. Register the load function in:
   data/command_suite/tags/function/load_pages.json

Add:
  "command_suite:triggers/my_new_pack/load"

7. Register the tick function in:
   data/command_suite/tags/function/tick_pages.json

Add:
  "command_suite:triggers/my_new_pack/tick"

8. Run in Minecraft:
   /reload

NOTES
-----
- Main datapack names use run_command with /trigger, so clicking opens pages directly.
- Commands inside pages use suggest_command, so clicking pastes them into chat and you press Enter.
- Minecraft only supports one sidebar display at a time.
- This pack uses Minecraft 1.21.5+ text component names: click_event and hover_event.
