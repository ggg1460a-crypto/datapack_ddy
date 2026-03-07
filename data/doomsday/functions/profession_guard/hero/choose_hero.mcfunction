tellraw @s {"text":"你選擇了英雄","color":"yellow"}
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1
function doomsday:clear_profession_tag
tag @s add ddy_hero
