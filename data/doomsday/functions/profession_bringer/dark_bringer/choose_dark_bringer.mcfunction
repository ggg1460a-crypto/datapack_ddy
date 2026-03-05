tellraw @s {"text":"你選擇了末日使者","color":"yellow"}
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1
function doomsday:clear_profession_tag
tag @s add ddy_dark_bringer
