# Handle Player Death
# Logic to turn player to spectator
gamemode spectator @s
tellraw @a ["",{"text":"§6[末日餘燼] ","bold":true},{"selector":"@s","color":"white"},{"text":" 已被淘汰並進入旁觀者模式。","color":"gray"}]

# Update scoreboard survivors
execute run function doomsday:game/check_wipeout
