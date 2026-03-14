#獲得一次性麻醉針，透過弓射向鬼後可定住鬼5秒
give @s tipped_arrow{ddy_item:3b,item_id:1b,ddy_hunter_skill3:1b,CustomPotionEffects:[{Id:2,Amplifier:99,Duration:100}],display:{Name:'{"text":"麻醉針","italic":false,"color":"gold"}'},EntityTag:{id:"arrow"}} 1
clear @s carrot_on_a_stick{ddy_item:3b,item_id:1b}
scoreboard players remove @s ddy_open_chest 30
