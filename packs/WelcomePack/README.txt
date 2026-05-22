Welcome Pack
============

Main player command:
/trigger rules

What it does:
- Shows a welcome message when a player first joins.
- Shows the same welcome message again when a player rejoins after leaving.
- Adds a clickable rules link in the welcome message.
- Lets players view rules any time using /trigger rules.

Reset first-join welcome state:
/tag @s remove welcome_pack_seen

Reset everyone:
/tag @a remove welcome_pack_seen
