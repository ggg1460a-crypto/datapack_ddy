# Transform to Light Bringer
clear @s
# If timer > 2400 (2 mins), give Iron Sword
execute if score #global ddy_timer > #const_2400 ddy_time run give @s iron_sword{Unbreakable:1b,display:{Name:'{"text":"§e光之聖劍","italic":false}'}} 1
# If timer <= 2400, give Stone Sword
execute if score #global ddy_timer <= #const_2400 ddy_time run give @s stone_sword{Unbreakable:1b,display:{Name:'{"text":"§e光之刃","italic":false}'}} 1

# Setup const for 2 mins (2400 ticks) if not set
scoreboard players set #const_2400 ddy_time 2400
