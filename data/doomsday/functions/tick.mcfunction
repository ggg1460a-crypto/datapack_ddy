# Main tick loop
# Run every tick

# 1. Timer logic
execute if score #global ddy_state matches 2..3 run function doomsday:game/timer


# 2. Chest Refresh Timer (every 1200 ticks / 60s)
execute if score #global ddy_state matches 2..3 run scoreboard players add #global ddy_chest_tick 1
execute if score #global ddy_state matches 2..3 if score #global ddy_chest_tick matches 600.. run function doomsday:game/chest_logic
execute if score #global ddy_state matches 2..3 if score #global ddy_chest_tick matches 600.. run scoreboard players set #global ddy_chest_tick 0

# 3. Kill detection
execute as @a[team=ddy_bringer,scores={ddy_kills=1..}] at @s run function doomsday:game/kill_listener

# 4. Death detection
execute as @a[gamemode=!spectator,scores={ddy_deaths=1..}] run function doomsday:game/player_death
# Reset death score
scoreboard players set @a[scores={ddy_deaths=1..}] ddy_deaths 0

# 3. State 0: Waiting for start (handled by admin)

function doomsday:game/heart_check

#profession tick
function doomsday:tick_profession



#game settings
execute if score #global ddy_state matches 0 at @e[tag=ddy_chest_set] run function doomsday:game_setting/chest_set_part2
execute if score #global ddy_state matches 0 at @e[tag=ddy_border_set] run function doomsday:game_setting/border_set_part2


execute if score #global ddy_state matches 1 as @e[nbt={Item:{tag:{ddy_ready:1b}}}] run scoreboard players add #global ddy_ready 1
execute if score #global ddy_state matches 1 as @e[nbt={Item:{tag:{ddy_ready:1b}}}] run kill @s
execute if score #global ddy_state matches 1 if score #global ddy_ready = #global ddy_players run function doomsday:game/start_2












