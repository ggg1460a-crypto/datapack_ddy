#assassin
#updata1
execute if score @s[tag=ddy_assassin,nbt={Inventory:[{tag:{ddy_item:4b,item_id:1b}}]}] ddy_kill_total matches 1 run tellraw @s "{\"text\":\"§6[末日餘燼] §武器已升級。\"}"

execute if score @s[tag=ddy_assassin,nbt={Inventory:[{tag:{ddy_item:4b,item_id:1b}}]}] ddy_kill_total matches 1 run function doomsday:profession_bringer/assassin/weapon_updata1

#updata2
execute if score @s[tag=ddy_assassin,scores={ddy_kill_total=1..},nbt={Inventory:[{tag:{ddy_item:5b,item_id:1b}}]}] ddy_damage2 matches 120.. run tellraw @s "{\"text\":\"§6[末日餘燼] §武器已升級。\"}"

execute if score @s[tag=ddy_assassin,scores={ddy_kill_total=1..},nbt={Inventory:[{tag:{ddy_item:5b,item_id:1b}}]}] ddy_damage2 matches 120.. run function doomsday:profession_bringer/assassin/weapon_updata2

#end_bringer
execute if score @s[tag=ddy_end_bringer,nbt={Inventory:[{tag:{ddy_item:4b,item_id:1b}}]}] ddy_damage2 matches 80.. run tellraw @s "{\"text\":\"§6[末日餘燼] §武器已升級。\"}"

execute if score @s[tag=ddy_end_bringer,nbt={Inventory:[{tag:{ddy_item:4b,item_id:1b}}]}] ddy_damage2 matches 80.. run function doomsday:profession_bringer/end_bringer/weapon_updata1

#witch
execute if score @s[tag=ddy_witch,nbt={Inventory:[{tag:{ddy_item:5b,item_id:1b}}]}] ddy_witch_tag_count matches 20.. run tellraw @s "{\"text\":\"§6[末日餘燼] §武器已升級。\"}"

execute if score @s[tag=ddy_witch,nbt={Inventory:[{tag:{ddy_item:5b,item_id:1b}}]}] ddy_witch_tag_count matches 20.. run function doomsday:profession_bringer/witch/weapon_update1


