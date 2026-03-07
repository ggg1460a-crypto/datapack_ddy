scoreboard players add @p[tag=ddy_witch,nbt={SelectedItem:{tag:{ddy_item:5b,item_id:1b}}}] ddy_witch_tag_count 1

scoreboard players set #global ddy_random 1000
execute at @s store result score @s ddy_random run data get entity @e[type=fishing_bobber,limit=1,sort= nearest,distance=..1] UUID[0] 1
scoreboard players operation @s ddy_random %= #global ddy_random

execute if score @s ddy_random matches 0..94 run effect give @s slowness 5 0 false

execute if score @s ddy_random matches 95..189 run effect give @s instant_damage 1 0 false

execute if score @s ddy_random matches 190..284 run effect give @s poison 5 0 false

execute if score @s ddy_random matches 285..379 run effect give @s wither 5 0 false

execute if score @s ddy_random matches 380..474 run effect give @s nausea 5 0 false

execute if score @s ddy_random matches 475..569 run effect give @s blindness 5 0 false

execute if score @s ddy_random matches 570..664 run effect give @s levitation 2 0 false

execute if score @s ddy_random matches 665..759 run effect give @s darkness 5 0 false

execute if score @s ddy_random matches 760..854 run effect give @s glowing 5 0 false

execute if score @s ddy_random matches 855..949 run effect give @s weakness 5 0 false

execute if score @s ddy_random matches 950..999 run scoreboard players add @s ddy_witch_dead_tag 1

kill @e[type=fishing_bobber,limit=1,sort= nearest,distance=..1]


