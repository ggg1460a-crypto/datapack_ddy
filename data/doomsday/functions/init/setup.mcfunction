# Initialize Scoreboards
scoreboard objectives add ddy_time dummy "{\"text\":\"§e§l【 末日餘燼 】\"}"
scoreboard objectives add ddy_timer dummy
scoreboard objectives add ddy_hearts dummy "{\"text\":\"§c地獄之心\"}"
scoreboard objectives add ddy_state dummy
scoreboard objectives add ddy_kills playerKillCount "{\"text\":\"ddy_kills\"}"
scoreboard objectives add ddy_kill_total dummy "{\"text\":\"ddy_kill_total\"}"
scoreboard objectives add ddy_players dummy "{\"text\":\"§a玩家人數\"}"
scoreboard objectives add ddy_health health "{\"text\":\"§c生命值\"}"
scoreboard objectives add ddy_deaths deathCount
scoreboard objectives add ddy_rand dummy
scoreboard objectives add ddy_chest_tick dummy


#profession
scoreboard objectives add ddy_cd1 dummy
scoreboard objectives add ddy_use_item minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add ddy_damage minecraft.custom:minecraft.damage_dealt


# Teams
team add ddy_bringer "{\"text\":\"§4末日使者\"}"
team modify ddy_bringer color red
team modify ddy_bringer prefix "{\"text\":\"§4[末日使者] §r\"}"
team modify ddy_bringer collisionRule pushOtherTeams
team modify ddy_bringer friendlyFire false

team add ddy_guard "{\"text\":\"§9餘燼守衛\"}"
team modify ddy_guard color blue
team modify ddy_guard prefix "{\"text\":\"§9[餘燼守衛] §r\"}"
team modify ddy_guard collisionRule pushOtherTeams
team modify ddy_guard friendlyFire false

team add ddy_light "{\"text\":\"§e光之使者\"}"
team modify ddy_light color yellow
team modify ddy_light prefix "{\"text\":\"§e[光之使者] §r\"}"

team add ddy_spectator "§7旁觀者"
team modify ddy_spectator color gray

# Initial state
scoreboard players set #global ddy_state 0
scoreboard players set #global ddy_timer 12000

tellraw @a "{\"text\":\"§6[末日餘燼] §a資料包載入成功！\"}"
