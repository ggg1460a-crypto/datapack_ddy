particle soul ~ ~ ~ 0.0 0.0 0.0 0.01 2 force
scoreboard players add @s ddy_ray_time 1

playsound minecraft:entity.zombie.infect player @s ~ ~ ~ 1 2


execute as @a[dx=0,dy=0,dz=0,tag=!ddy_witch] run function doomsday:profession_bringer/witch/weapon_effect1

execute if entity @a[dx=0,dy=0,dz=0,tag=!ddy_witch] run scoreboard players add @s ddy_witch_tag_count 1

execute if entity @a[dx=0,dy=0,dz=0,tag=!ddy_witch] run scoreboard players set @s ddy_ray_time 129

execute if score @s ddy_ray_time matches ..128 positioned ^ ^ ^1 run function doomsday:profession_bringer/witch/use_weapon2
scoreboard players set @s ddy_ray_time 0
