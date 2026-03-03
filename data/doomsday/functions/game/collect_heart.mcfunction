# Collect Heart
# Called when a guard has a heart
clear @s nether_star{ddy_heart:1b}
scoreboard players add #global ddy_hearts 1
tellraw @a "{\"text\":\"§6[末日餘燼] §e餘燼守衛已收集一顆地獄之心！\"}"
tellraw @a ["",{"text":"§a目前數量：","color":"green"},{"score":{"name":"#global","objective":"ddy_hearts"}},{"text":" / ","color":"white"},{"score":{"name":"#global","objective":"ddy_players"}}]

# Check if enough hearts to transform
execute if score #global ddy_hearts >= #global ddy_players run function doomsday:game/counter_attack

# Refresh chests immediately
function doomsday:game/chest_logic
scoreboard players set #global ddy_chest_tick 0
