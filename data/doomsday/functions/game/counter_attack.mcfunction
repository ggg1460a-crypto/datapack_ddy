# Counter Attack Phase
# Triggered by heart collection or 2 mins left

scoreboard players set #global ddy_state 3

# Messages
title @a title "{\"text\":\"§e餘燼反擊\"}"
title @a subtitle "{\"text\":\"§6餘燼守衛化身為光之使者！\"}"
tellraw @a "{\"text\":\"§6[末日餘燼] §e反擊階段開始！末日使者力量已被削弱。\"}"

# 1. Doomsday Bringers debuffs
# Lose Speed I, clear all items
execute as @a[team=ddy_bringer] run effect clear @s speed
execute as @a[team=ddy_bringer] run clear @s

# 2. Ember Guards -> Light Bringers
# Check if triggered before 2 mins left
# High-tier weapon if triggered early, otherwise stone
execute as @a[team=ddy_guard] run function doomsday:game/transform_to_light

# Move players to Light Bringer team for color/prefix
execute as @a[team=ddy_guard] run team join ddy_light @s
