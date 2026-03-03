# Chest Content Logic
# Run every 60s (1200 ticks) or triggered by event

# 1. Clear contents of all tagged chests
# Admin must tag Marker entities at chest locations with 'ddy_chest'


execute as @e[tag=ddy_chest] at @s run data merge block ~ ~ ~ {Lock:"§9餘燼之鑰",LootTable:"doomsday:my_chest"}


