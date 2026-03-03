# Check for team wiped out
# This is called periodically or on death

# Count survivors
scoreboard players set #count_bringer ddy_state 0
scoreboard players set #count_guard ddy_state 0
execute as @a[team=ddy_bringer,gamemode=!spectator] run scoreboard players add #count_bringer ddy_state 1
execute as @a[team=ddy_guard,gamemode=!spectator] run scoreboard players add #count_guard ddy_state 1
execute as @a[team=ddy_light,gamemode=!spectator] run scoreboard players add #count_guard ddy_state 1

# Check if anyone won by wipeout
execute if score #count_bringer ddy_state matches 0 run function doomsday:game/end
execute if score #count_guard ddy_state matches 0 run function doomsday:game/end
