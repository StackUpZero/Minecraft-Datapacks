CustomDayCylce
===============

Purpose:
Allows players/admins to set day and night cycle lengths in real-time minutes.

Commands:
/trigger customdaycycle
  Opens the main menu.

/trigger cdc_start
  Starts the custom cycle, disables vanilla time, and starts from day.

/trigger cdc_stop
  Stops the custom cycle and freezes time. Vanilla time stays disabled.

/trigger cdc_vanilla
  Restores vanilla Minecraft time.

/trigger cdc_config
  Opens the config/status page.

/trigger cdc_day set <minutes>
  Sets day length in real-time minutes. Whole numbers only, 1-1440.

/trigger cdc_night set <minutes>
  Sets night length in real-time minutes. Whole numbers only, 1-1440.

Notes:
- Uses gamerule advance_time false/true.
- Day = 0-11999. Night = 12000-23999.
- Start custom cycle resets time to day so the internal phase stays accurate.
