scoreboard players set #global ddy_random 10000
summon armor_stand ~ ~ ~ {Tags:["ddy_witch_random"],Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b}
execute as @s store result score @s ddy_random run data get entity @e[type=armor_stand,tag=ddy_witch_random,limit=1,sort=nearest] UUID[0] 1
scoreboard players operation @s ddy_random %= #global ddy_random
kill @e[type=armor_stand,tag=ddy_witch_random]

execute if score @s ddy_random matches 0..924 run effect give @a[limit=1,sort= furthest,team=ddy_guard] slowness 5 3 false
execute if score @s ddy_random matches 925..1849 run effect give @a[limit=1,sort= furthest,team=ddy_guard] instant_damage 1 3 false
execute if score @s ddy_random matches 1850..2774 run effect give @a[limit=1,sort= furthest,team=ddy_guard] poison 5 3 false
execute if score @s ddy_random matches 2775..3699 run effect give @a[limit=1,sort= furthest,team=ddy_guard] wither 5 3 false
execute if score @s ddy_random matches 3700..4624 run effect give @a[limit=1,sort= furthest,team=ddy_guard] nausea 5 3 false
execute if score @s ddy_random matches 4625..5549 run effect give @a[limit=1,sort= furthest,team=ddy_guard] blindness 5 3 false
execute if score @s ddy_random matches 5550..6479 run effect give @a[limit=1,sort= furthest,team=ddy_guard] levitation 2 3 false
execute if score @s ddy_random matches 6480..7399 run effect give @a[limit=1,sort= furthest,team=ddy_guard] darkness 5 3 false
execute if score @s ddy_random matches 7400..8324 run effect give @a[limit=1,sort= furthest,team=ddy_guard] glowing 5 3 false
execute if score @s ddy_random matches 8325..9250 run effect give @a[limit=1,sort= furthest,team=ddy_guard] weakness 5 3 false
execute if score @s ddy_random matches 9251..9999 run scoreboard players add @a[limit=1,sort= furthest,team=ddy_guard] ddy_witch_dead_tag 1
execute if score @s ddy_random matches 9251..9999 run tellraw @s {"text": "玩家已被標上死亡標記","color":"dark_red"}
execute if score @s ddy_random matches 9251..9999 run tellraw @a[limit=1,sort= furthest,team=ddy_guard] {"text":"你已被標上了死亡標記，擁有三次立即死亡！","color":"dark_red"}
playsound minecraft:entity.witch.hurt master @a[limit=1,sort= furthest,team=ddy_guard] ~ ~ ~ 1 0.5
playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 0.5

scoreboard players set @s ddy_cd1 1200

clear @s minecraft:written_book{ddy_item:2b} 1
