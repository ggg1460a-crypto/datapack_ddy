
scoreboard players set #global ddy_random 10000
summon marker ~ ~ ~
execute at @s store result score @s ddy_random run data get entity @e[type=marker,limit=1,sort= nearest,distance=..1] UUID[0] 1
scoreboard players operation @s ddy_random %= #global ddy_random

execute if score @s ddy_random matches 0..974 run effect give @s slowness 5 1 false

execute if score @s ddy_random matches 975..1949 run effect give @s instant_damage 1 1 false

execute if score @s ddy_random matches 1950..2924 run effect give @s poison 5 1 false

execute if score @s ddy_random matches 2925..3899 run effect give @s wither 5 1 false

execute if score @s ddy_random matches 3900..4874 run effect give @s nausea 5 1 false

execute if score @s ddy_random matches 4875..5849 run effect give @s blindness 5 1 false

execute if score @s ddy_random matches 5850..6824 run effect give @s levitation 2 1 false

execute if score @s ddy_random matches 6825..7799 run effect give @s darkness 5 1 false

execute if score @s ddy_random matches 7800..8774 run effect give @s glowing 5 1 false

execute if score @s ddy_random matches 8775..9749 run effect give @s weakness 5 1 false

execute if score @s ddy_random matches 9750..9999 run scoreboard players add @s ddy_witch_dead_tag 1

kill @e[type=marker,limit=1,sort= nearest,distance=..1]




