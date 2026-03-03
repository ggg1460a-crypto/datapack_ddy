# Check heart collection
# Run every tick or via advancement
# For reliability, we check players' inventory
execute as @a[team=ddy_guard,nbt={Inventory:[{tag:{ddy_heart:1b}}]}] run function doomsday:game/collect_heart
