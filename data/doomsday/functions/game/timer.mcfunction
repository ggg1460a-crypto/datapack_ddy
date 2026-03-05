# Timer Logic
# Run every tick

# Countdown
scoreboard players remove #global ddy_timer 1

# Convert ticks to display (approximate minutes/seconds)
execute if score #global ddy_timer matches ..0 run function doomsday:game/end

# Display timer every second (20 ticks)
execute if score #global ddy_timer matches 0.. run function doomsday:game/display_timer

# Check Phase Transition: 2 mins left (2400 ticks)
execute if score #global ddy_state matches 2 if score #global ddy_timer matches ..2400 run function doomsday:game/counter_attack
