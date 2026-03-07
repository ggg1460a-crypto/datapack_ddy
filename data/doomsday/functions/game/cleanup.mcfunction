# Clear effects, items, and teams
effect clear @a
gamemode adventure @a[gamemode=spectator]
clear @a
team leave @a

# Reset world border
worldborder set 29999984

# Reset state
scoreboard players set #global ddy_state 0
scoreboard objectives setdisplay sidebar
scoreboard players set @a ddy_open_chest 0

tellraw @a "{\"text\":\"§6[末日餘燼] §a遊戲已重置，管理員可準備下一場。\"}"
