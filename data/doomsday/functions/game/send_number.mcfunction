    execute as @r[gamemode=!spectator,scores={ddy_number=0..}] run scoreboard players operation @s ddy_number = #global ddy_number
    scoreboard players remove #global ddy_number 1
    execute unless score #global ddy_number matches ..0 run function doomsday:game/send_number