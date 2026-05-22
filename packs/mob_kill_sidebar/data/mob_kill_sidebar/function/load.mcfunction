scoreboard objectives add mobkills trigger "Mob Kills Toggle"
scoreboard objectives add mobkills_display dummy "Mob Kills"
scoreboard objectives add mobkills_state dummy

scoreboard objectives add kill_zombie minecraft.killed:minecraft.zombie
scoreboard objectives add kill_skeleton minecraft.killed:minecraft.skeleton
scoreboard objectives add kill_creeper minecraft.killed:minecraft.creeper
scoreboard objectives add kill_spider minecraft.killed:minecraft.spider
scoreboard objectives add kill_enderman minecraft.killed:minecraft.enderman
scoreboard objectives add kill_witch minecraft.killed:minecraft.witch
scoreboard objectives add kill_slime minecraft.killed:minecraft.slime
scoreboard objectives add kill_phantom minecraft.killed:minecraft.phantom
scoreboard objectives add kill_drowned minecraft.killed:minecraft.drowned
scoreboard objectives add kill_husk minecraft.killed:minecraft.husk
scoreboard objectives add kill_stray minecraft.killed:minecraft.stray
scoreboard objectives add kill_pillager minecraft.killed:minecraft.pillager
scoreboard objectives add kill_vindicator minecraft.killed:minecraft.vindicator
scoreboard objectives add kill_evoker minecraft.killed:minecraft.evoker
scoreboard objectives add kill_ravager minecraft.killed:minecraft.ravager
scoreboard objectives add kill_blaze minecraft.killed:minecraft.blaze
scoreboard objectives add kill_ghast minecraft.killed:minecraft.ghast
scoreboard objectives add kill_piglin minecraft.killed:minecraft.piglin
scoreboard objectives add kill_zombified_piglin minecraft.killed:minecraft.zombified_piglin
scoreboard objectives add kill_magma_cube minecraft.killed:minecraft.magma_cube
scoreboard objectives add kill_wither_skeleton minecraft.killed:minecraft.wither_skeleton
scoreboard objectives add kill_guardian minecraft.killed:minecraft.guardian
scoreboard objectives add kill_elder_guardian minecraft.killed:minecraft.elder_guardian
scoreboard objectives add kill_shulker minecraft.killed:minecraft.shulker
scoreboard objectives add kill_wither minecraft.killed:minecraft.wither
scoreboard objectives add kill_ender_dragon minecraft.killed:minecraft.ender_dragon
scoreboard objectives add kill_warden minecraft.killed:minecraft.warden

scoreboard objectives add kill_cow minecraft.killed:minecraft.cow
scoreboard objectives add kill_pig minecraft.killed:minecraft.pig
scoreboard objectives add kill_sheep minecraft.killed:minecraft.sheep
scoreboard objectives add kill_chicken minecraft.killed:minecraft.chicken
scoreboard objectives add kill_rabbit minecraft.killed:minecraft.rabbit
scoreboard objectives add kill_horse minecraft.killed:minecraft.horse
scoreboard objectives add kill_wolf minecraft.killed:minecraft.wolf

tellraw @a {"text":"Mob Kill Sidebar loaded. Use /trigger mobkills to toggle.","color":"green"}
