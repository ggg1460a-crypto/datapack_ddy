# Main tick loop
# Run every tick

# 1. Timer logic
execute if score #global ddy_state matches 1..2 run function doomsday:game/timer

# 2. Chest Refresh Timer (every 1200 ticks / 60s)
execute if score #global ddy_state matches 1..2 run scoreboard players add #global ddy_chest_tick 1
execute if score #global ddy_state matches 1..2 if score #global ddy_chest_tick matches 1200.. run function doomsday:game/chest_logic
execute if score #global ddy_state matches 1..2 if score #global ddy_chest_tick matches 1200.. run scoreboard players set #global ddy_chest_tick 0

# 3. Kill detection
execute as @a[team=ddy_bringer,scores={ddy_kills=1..}] at @s run function doomsday:game/kill_listener

# 4. Death detection
execute as @a[gamemode=!spectator,scores={ddy_deaths=1..}] run function doomsday:game/player_death
# Reset death score
scoreboard players set @a[scores={ddy_deaths=1..}] ddy_deaths 0

# 3. State 0: Waiting for start (handled by admin)


function doomsday:game/30s
function doomsday:game/heart_check

function doomsday:tick_profession








