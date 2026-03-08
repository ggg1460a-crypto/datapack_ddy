# Game End Logic
# Run once when game conditions met

scoreboard players set #global ddy_state 4


# Count survivors
scoreboard players set #count_bringer ddy_state 0
scoreboard players set #count_guard ddy_state 0
scoreboard players set #global ddy_ready 0
execute as @a[team=ddy_bringer,gamemode=!spectator] run scoreboard players add #count_bringer ddy_state 1
execute as @a[team=ddy_guard,gamemode=!spectator] run scoreboard players add #count_guard ddy_state 1
execute as @a[team=ddy_light,gamemode=!spectator] run scoreboard players add #count_guard ddy_state 1

# 1. Bringer wipeout
execute if score #count_bringer ddy_state matches 0 run function doomsday:game/win_guard
# 2. Guard wipeout
execute if score #count_guard ddy_state matches 0 run function doomsday:game/win_bringer
# 3. Timeout - Compare counts
execute if score #count_bringer ddy_state > #count_guard ddy_state run function doomsday:game/win_bringer
execute if score #count_guard ddy_state > #count_bringer ddy_state run function doomsday:game/win_guard
execute if score #count_bringer ddy_state = #count_guard ddy_state run function doomsday:game/win_draw

execute as @a run function doomsday:clear_profession_tag


kill @e[tag=ddy_hunter_skill2]
kill @e[tag=had_ddy_hunter_skill3]