# Kill Listener
# Check for Doomsday Bringer kills and upgrade weapon

# Only run for Doomsday Bringers with 1+ ddy_kills
scoreboard players add @s ddy_kill_total 1
scoreboard players set @s ddy_kills 0

# Upgrade logic
# 1 kill -> Stone Sword
execute if score @s ddy_kill_total matches 1 run function doomsday:game/upgrade_stone
# 2 kills -> Iron Sword
execute if score @s ddy_kill_total matches 2.. run function doomsday:game/upgrade_iron

# Message
tellraw @s "{\"text\":\"§6[末日餘燼] §a擊殺成功！武器威力已提升。\"}"
