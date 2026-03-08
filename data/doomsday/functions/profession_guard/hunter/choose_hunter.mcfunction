tellraw @s {"text":"你選擇了獵人","color":"yellow"}
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1
function doomsday:clear_profession_tag
tag @s add ddy_hunter
item replace entity @a[team=ddy_guard] container.1 with paper{display:{Name:'{"text":"丟出物品準備完成"}'},ddy_ready:1b} 1
