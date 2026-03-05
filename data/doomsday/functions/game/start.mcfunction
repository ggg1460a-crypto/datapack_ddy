# Start the game
# Called by admin: /function doomsday:game/start




# Count players
scoreboard players set #global ddy_players 0
execute as @a[gamemode=!spectator] run scoreboard players add #global ddy_players 1


# Clear items and set teams (Random assignment)
function doomsday:game/random_teams

execute as @a[team=ddy_bringer] run title @s title {"text":"§4末日使者"}
tellraw @a[team=ddy_bringer] {"text":"選擇你的職業","color":"red"}

execute as @a[team=ddy_guard] run title @s title {"text":"§9餘燼守衛"}
tellraw @a[team=ddy_guard] {"text":"選擇你的職業","color":"yellow"}

item replace entity @a[team=ddy_bringer] container.0 with paper{display:{Name:'{"text":"丟出物品準備完成"}'},ddy_ready:1b} 1
item replace entity @a[team=ddy_guard] container.0 with paper{display:{Name:'{"text":"丟出物品準備完成"}'},ddy_ready:1b} 1
give @a[team=ddy_bringer] written_book{display:{Name:'{"text":"使者之書"}'},pages:['["",{"text":"\\u672b\\u65e5\\u4f7f\\u8005","color":"dark_red","clickEvent":{"action":"run_command","value":"/function doomsday:profession_bringer/dark_bringer/choose_dark_bringer"}},{"text":"\\n\\n","color":"red"},{"text":"\\u6697\\u5f71\\u523a\\u5ba2","color":"dark_red","clickEvent":{"action":"run_command","value":"/function doomsday:profession_bringer/assassin/choose_assassin"}},{"text":"\\n\\n","color":"red"},{"text":"\\u5deb\\u6bd2\\u5973\\u5b69","color":"dark_red","clickEvent":{"action":"run_command","value":"/function doomsday:profession_bringer/witch/choose_witch"}}]'],title:"使者之書",author:"末日餘燼"}
# Reset scores

scoreboard players set #global ddy_ready 0
scoreboard players set #global ddy_state 1

