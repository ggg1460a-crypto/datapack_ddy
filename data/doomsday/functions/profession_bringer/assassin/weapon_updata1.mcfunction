#將玩家身上的刺客小刀更新為名為初階血刃的石劍，有ddy_item:5b,item_id:1b的NBT標籤
clear @s wooden_sword{ddy_item:4b,item_id:1b}
scoreboard players set @s ddy_damage2 0
give @s stone_sword{ddy_item:5b,item_id:1b,display:{Name:'{"text":"初階血刃","italic":false,"color":"dark_red"}'}} 1
