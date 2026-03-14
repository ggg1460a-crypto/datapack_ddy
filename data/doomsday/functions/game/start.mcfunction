# Start the game
# Called by admin: /function doomsday:game/start

clear @a


# Count players
scoreboard players set #global ddy_players 0
execute as @a[gamemode=!spectator] run scoreboard players add #global ddy_players 1
scoreboard players operation #global ddy_number = #global ddy_players
# Clear items and set teams (Random assignment)
function doomsday:game/random_teams
function doomsday:game/send_number


execute as @a[team=ddy_bringer] run title @s title {"text":"§4末日使者"}
tellraw @a[team=ddy_bringer] {"text":"選擇你的職業","color":"red"}

execute as @a[team=ddy_guard] run title @s title {"text":"§9餘燼守衛"}
tellraw @a[team=ddy_guard] {"text":"選擇你的職業","color":"yellow"}


give @a[team=ddy_bringer] written_book{ddy_profession_book:1b,display:{Name:'{"text":"使者之書"}'},pages:['["",{"text":"\\u672b\\u65e5\\u4f7f\\u8005","color":"dark_red","clickEvent":{"action":"run_command","value":"/function doomsday:profession_bringer/end_bringer/choose_end_bringer"}},{"text":"\\n\\n","color":"red"},{"text":"\\u6697\\u5f71\\u523a\\u5ba2","color":"dark_red","clickEvent":{"action":"run_command","value":"/function doomsday:profession_bringer/assassin/choose_assassin"}},{"text":"\\n\\n","color":"red"},{"text":"\\u5deb\\u6bd2\\u5973\\u5b69","color":"dark_red","clickEvent":{"action":"run_command","value":"/function doomsday:profession_bringer/witch/choose_witch"}}]'],title:"使者之書",author:"末日餘燼"}
give @a[team=ddy_guard] written_book{ddy_profession_book:1b,display:{Name:'{"text":"守衛之書"}'},pages:['["",{"text":"餘燼使者","color":"gold","clickEvent":{"action":"run_command","value":"/function doomsday:profession_guard/ember_guard/choose_ember_guard"}},{"text":"\\n\\n","color":"red"},{"text":"勇者","color":"gold","clickEvent":{"action":"run_command","value":"/function doomsday:profession_guard/hero/choose_hero"}},{"text":"\\n\\n","color":"red"},{"text":"獵人","color":"gold","clickEvent":{"action":"run_command","value":"/function doomsday:profession_guard/hunter/choose_hunter"}}]'],title:"守衛之書",author:"末日餘燼"}
# Reset scores

scoreboard players set #global ddy_ready 0
scoreboard players set #global ddy_state 1

scoreboard players set @a ddy_damage2 0


