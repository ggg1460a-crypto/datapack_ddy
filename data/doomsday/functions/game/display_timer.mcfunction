# Display Timer & Stats
# Update scoreboard for everyone

# 1. Update Remaining Time
scoreboard players operation "§f剩餘時間(秒)" ddy_time = #global ddy_timer
scoreboard players set #const_20 ddy_time 20
scoreboard players operation "§f剩餘時間(秒)" ddy_time /= #const_20 ddy_time

# 2. Update Hearts
scoreboard players operation "§c已收地獄之心" ddy_time = #global ddy_hearts

# 3. Dynamic Player Counts
scoreboard players set #disp_bringer ddy_time 0
scoreboard players set #disp_guard ddy_time 0
execute as @a[team=ddy_bringer,gamemode=!spectator] run scoreboard players add #disp_bringer ddy_time 1
execute as @a[team=ddy_guard,gamemode=!spectator] run scoreboard players add #disp_guard ddy_time 1
execute as @a[team=ddy_light,gamemode=!spectator] run scoreboard players add #disp_guard ddy_time 1

scoreboard players operation "§4末日使者生存" ddy_time = #disp_bringer ddy_time
scoreboard players operation "§9餘燼守衛生存" ddy_time = #disp_guard ddy_time

# Display on Sidebar
scoreboard objectives setdisplay sidebar ddy_time
