particle end_rod ~ ~ ~ 0.0 0.0 0.0 0 0 force
scoreboard players add @s ddy_ray_time 1

playsound minecraft:entity.firework_rocket.launch player @s ~ ~ ~ 2 2


execute as @a[dx=0,dy=0,dz=0,tag=!ddy_witch] run effect give @s glowing 30 0
#clear @s carrot_on_a_stick{ddy_item:1b}
execute if entity @a[dx=0,dy=0,dz=0,tag=!ddy_witch] run scoreboard players set @s ddy_ray_time 129

execute if score @s ddy_ray_time matches ..128 positioned ^ ^ ^1 run function doomsday:profession_bringer/witch/use_item1
scoreboard players set @s ddy_ray_time 0

