#給予玩家名稱為暗影斬的釣竿紅蘿蔔，有ddy_item:3b,item_id:1b的NBT標籤
scoreboard players remove @s ddy_damage 150
scoreboard players set @s ddy_cd2 -1
give @s carrot_on_a_stick{ddy_item:3b,item_id:1b,display:{Name:'{"text":"暗影斬","italic":false,"color":"dark_purple"}',Lore:['{"text": "獲得力量255持續2秒","italic":false,"color": "white"}']}} 1
