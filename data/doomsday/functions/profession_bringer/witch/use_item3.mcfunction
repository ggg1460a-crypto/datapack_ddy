
particle large_smoke ~ ~ ~ 0.1 0.1 0.1 0.01 5 force

particle witch ~ ~ ~ 0.2 0.2 0.2 0.05 3 force

particle dust 0.2 0 0.3 1.0 ~ ~ ~ 0.1 0.1 0.1 0.01 2 force

scoreboard players add @s ddy_ray_time 1
playsound minecraft:entity.zombie.infect player @s ~ ~ ~ 1 2


execute as @a[dx=0,dy=0,dz=0,tag=!ddy_witch] run effect give @s glowing infinite

execute if entity @a[dx=0,dy=0,dz=0,tag=!ddy_witch] run scoreboard players set @s ddy_ray_time 129

execute if score @s ddy_ray_time matches ..128 positioned ^ ^ ^1 run function doomsday:profession_bringer/witch/use_item3

scoreboard players set @s ddy_ray_time 0
