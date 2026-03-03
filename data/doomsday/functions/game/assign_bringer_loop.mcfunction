# Assign Bringer Loop
# Pick a random player without a team and add to ddy_bringer
# Repeat until #target is reached

execute as @r[team=,gamemode=!spectator] run team join ddy_bringer @s
scoreboard players remove #target ddy_state 1

# If target still > 0, repeat
execute if score #target ddy_state matches 1.. run function doomsday:game/assign_bringer_loop
