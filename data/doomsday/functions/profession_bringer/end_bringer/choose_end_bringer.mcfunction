tellraw @s {"text":"你選擇了末日使者","color":"yellow"}
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1
function doomsday:clear_profession_tag
tag @s add ddy_end_bringer
item replace entity @a[team=ddy_bringer] container.1 with paper{display:{Name:'{"text":"丟出物品準備完成"}'},ddy_ready:1b} 1
