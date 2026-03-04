# Doomsday Bringer Start
# Wood sword + Darkness, Weakness, Slowness II for 30s
clear @s
effect give @s darkness 20 0 true
effect give @s weakness 20 255 true
effect give @s slowness 20 4 true

# Set kill score to 0
scoreboard players set @s ddy_kills 0

# 30s later (600 ticks) - Speed I (Handled in tick or separate schedule)
schedule function doomsday:game/bringer_awaken 20s

# Glowing for 5 seconds to show identity
effect give @s glowing 5 0 true
