# Balanced Random Team Assignment
# Called at the start of the game

# 1. Clear everyone from teams
team leave @a

# 2. Count total players
scoreboard players set #total ddy_state 0
execute as @a[gamemode=!spectator] run scoreboard players add #total ddy_state 1

# 3. Calculate target for Doomsday Bringers (Total / 2)
scoreboard players operation #target ddy_state = #total ddy_state
scoreboard players set #const_2 ddy_state 2
scoreboard players operation #target ddy_state /= #const_2 ddy_state

# Handle edge case: if 1 player, make them bringer (math will make target 0)
execute if score #target ddy_state matches 0 run scoreboard players set #target ddy_state 1

# 4. Start recursive selection
function doomsday:game/assign_bringer_loop

# 5. Everyone left becomes an Ember Guard
team join ddy_guard @a[team=,gamemode=!spectator]
