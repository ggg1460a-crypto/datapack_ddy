scoreboard players set #global ddy_ready 0
scoreboard players set #global ddy_state 2
scoreboard players set #global ddy_timer 12000
scoreboard players set #global ddy_hearts 0
scoreboard players set #global ddy_kill_total 0

# Set World Border (Chebyshev Distance 50 = Radius 50 = Total 100)
execute at @e[tag=ddy_center,limit=1] run worldborder center ~ ~
worldborder set 100


# Teleport to center (Admin should set a marker named 'ddy_center')
execute as @a[gamemode=!spectator] at @e[tag=ddy_center,limit=1] run tp @s ~ ~ ~


# Give items and effects to Doomsday Bringers
execute as @a[team=ddy_bringer] run function doomsday:game/start_bringer

# Give items to guards
execute as @a[team=ddy_guard] run function doomsday:game/start_guard

# Individual team notifications
execute as @a[team=ddy_bringer] run title @s title "{\"text\":\"§4末日使者\"}"
execute as @a[team=ddy_bringer] run title @s subtitle "{\"text\":\"§c你的目標是消滅所有守衛！\"}"

execute as @a[team=ddy_guard] run title @s title "{\"text\":\"§9餘燼守衛\"}"
execute as @a[team=ddy_guard] run title @s subtitle "{\"text\":\"§b躲避追殺並收集地獄之心！\"}"

function doomsday:game/chest_logic
# Start message
tellraw @a "{\"text\":\"§6[末日餘燼] §a遊戲正式開始！限時 10 分鐘。\"}"
function doomsday:game/start_give