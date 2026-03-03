execute as @a[scores={ddy_30s=600..}] run function doomsday:game/chest_logic
execute as @a[scores={ddy_30s=600..}] run effect give @a minecraft:glowing 4
execute as @a[scores={ddy_30s=600..}] unless entity @s[scores={ddy_state=2}] run effect give @a[team=ddy_bringer] minecraft:speed 40
execute as @a[scores={ddy_30s=600..}] run scoreboard players reset @a ddy_30s

scoreboard players add @a ddy_30s 1
